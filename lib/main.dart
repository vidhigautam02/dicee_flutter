import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePageState(),
      ),
    ),
  );
}

class DicePageState extends StatefulWidget {

  @override
  _DicePageStateState createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageState> {
  int leftdicenumber =1;
  int rightdicenumber=1;
  void change(){
    setState(() {
      rightdicenumber = Random().nextInt(6)+1;
      leftdicenumber = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                change();
              },
              child: Image.asset("images/dice$leftdicenumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                change();
              },
              child: Image.asset("images/dice$rightdicenumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}

