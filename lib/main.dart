import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
            child: Image(
              image: AssetImage('assets/rocket.png'),
              height: 200,
              width: 200,
              color: Colors.red[900],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email,
                  color: Colors.red[900],
                ),
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.vpn_key,
                  color: Colors.red[900],
                ),
                labelStyle: TextStyle(
                    color: Colors.white
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
            child: RaisedButton(onPressed: () {},
              child: Text('Login'),
              color: Colors.red[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Text('Forgot password',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Text('New user? SIGN UP',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                child: Text('or login with',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.face,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(Icons.fingerprint,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

