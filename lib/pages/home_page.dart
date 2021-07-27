/// Flutter code sample for Table

// This sample shows a `Table` with borders, multiple types of column widths and different vertical cell alignments.

import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

/// This is the main application widget.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String _title = 'Home page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: const BoxDecoration(
          ),
          children: <Widget>[
              Container(
                height: 55,
                width: 3,
                color: Colors.blueAccent,
              ),
            Container(
              height: 55,
              width: 3,
              color: Colors.grey,
            ),
            Container(
              height: 55,
              width: 3,
              color: Colors.red,
            ),

          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
          ),
          children: <Widget>[
            Container(
              height: 3,
              color: Colors.white,
            ),
            Container(
              width: 3,
              color: Colors.grey,
            ),
            Container(
              height: 3,
              color: Colors.white,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
          ),
          children: <Widget>[
    Container(
    height: 55,
    width: 3,
    color: Colors.lightGreenAccent,
    ),
            Container(
              height: 55,
              width: 3,
              color: Colors.grey,
            ),
    Container(
          height: 55,
          width: 3,
          color: Colors.amberAccent,
          ),

          ],
        ),
      ],
    );
  }
}
