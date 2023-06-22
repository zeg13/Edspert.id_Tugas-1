import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Navigation',
      initialRoute: '/1',
      routes: {
        '/1': (context) => Home(),
        '/2': (context) => Profile(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
              'Hi.. I am Zeki \n\nThis my first Apps. \nI hope can learn more about Mobile Developer. \nReady to take the next step \n\nThank You...'),
          ElevatedButton(
            child: Text('Go to Profile'),
            onPressed: () {
              Navigator.pushNamed(context, '/2');
            },
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/picture.png",
            ),
            width: 100,
            height: 100,
          ),
          Text("ZEKI GUNAWAN",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Text(
              "WA: 087761693651 | Email: zeki.gunawan@gmail.com \nLinkedin: www.linkedin.com/in/zeki-gunawan \nJakarta",
              textAlign: TextAlign.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("EDUCATION",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Container(
                    width: 300.0,
                    height: 2.0,
                    color: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("RevoU",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "(Jan, 2023 – Apr, 2023)",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Grade: 95.65% / 100.00%",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Full Stack Data Analytics",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Gadjah Mada University",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "(Jul, 2010 – Sep, 2014)",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "GPA: 3.91 / 4.00",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Bachelor of Mathematics",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("EXPERIENCE",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Container(
                    width: 300.0,
                    height: 2.0,
                    color: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Inventory & Support Logistic Jr Manager",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "PT. Indomarco Prismatama (Head Office)",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "(Feb, 2019 – Present)",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Deputy DC Manager Warehouse",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "PT. Indomarco Prismatama (Bali)",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "(Apr, 2016 – Feb, 2019)",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Management Development Program (MDP)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "PT. Indomarco Prismatama (Jember)",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "(Oct, 2014 – Apr, 2016)",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
