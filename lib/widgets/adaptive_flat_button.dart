import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            //color: Colors.blue,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler)
        : TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor),
            onPressed: handler,
            child: Text(
              'choose date!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
