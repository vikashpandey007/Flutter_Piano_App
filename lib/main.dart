
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
 AudioCache player = AudioCache();
  
  Widget buildcontainer1( sound ,colorName1) {
    return MaterialButton(
      height: 330,
      minWidth: 80,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 8.0,
      color: colorName1,
      
      highlightColor: Colors.black,
      onPressed: () {
        player.play("piano$sound.wav");
      },
      // child: Text(),
    );
  }
   Widget buildcontainer2(music,colorName2) {
    return Container(
      child: MaterialButton(
    
        height: 200,
        minWidth: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        elevation: 8.0,
        color: colorName2,
        highlightColor: Colors.white,
        onPressed: () {
           player.play("piano$music.wav");
        },
      ),
    );
  }
         @override
  void initState() {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'piano',
      theme: ThemeData.dark(),
      home: Scaffold(
     
        body: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildcontainer1(1,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(2,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(3,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(4,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(5,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(6,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(7,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(8,Colors.white),
                Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(9,Colors.white),
                 Padding(padding: EdgeInsets.all(2),),
                buildcontainer1(10,Colors.white),
             
              ],
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 65),
              child: Row(children: <Widget>[
                 buildcontainer2(11,Colors.black),
                  Padding(padding: EdgeInsets.all(10),),
                  buildcontainer2(12,Colors.black),

                  Padding(padding: EdgeInsets.all(50),),
                  buildcontainer2(13,Colors.black),
                   Padding(padding: EdgeInsets.all(10),),
                  buildcontainer2(14,Colors.black),
                  Padding(padding: EdgeInsets.all(10),),
                  buildcontainer2(15,Colors.black),

                  Padding(padding: EdgeInsets.all(50),),
                  buildcontainer2(16,Colors.black),
                  Padding(padding: EdgeInsets.all(10),),
                  buildcontainer2(17,Colors.black),
                  

              ],),
            )
          ],
        ),
      ),
    );
  }
}
