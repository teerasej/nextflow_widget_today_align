import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: Align'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Image(
                    height: 300,
                    fit: BoxFit.cover,
                    image: AssetImage('images/teach1.jpg'),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment(-1, 0.57),
                      child: Text(
                        'แนะนำภาควิชา',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed odio quis dolor condimentum gravida. Aliquam interdum felis nibh, sit amet elementum leo feugiat at. Suspendisse ut sodales libero. Sed viverra mollis egestas. Suspendisse dapibus velit urna, id mollis diam luctus sollicitudin. Fusce eget interdum ipsum, et condimentum leo. Praesent nec est eu ipsum tristique scelerisque. Nullam viverra bibendum ipsum, nec scelerisque erat pellentesque vitae.'),
            )
          ],
        ));
  }
}
