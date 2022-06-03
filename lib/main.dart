import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: postdemo(),));
}
class postdemo extends StatefulWidget {
  const postdemo({Key? key}) : super(key: key);

  @override
  State<postdemo> createState() => _postdemoState();
}

class _postdemoState extends State<postdemo> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: Column(
      children: [
        TextField(controller:t1 ,),
        TextField(controller:t2 ,),
        ElevatedButton(onPressed: () async {
          String name=t1.text;
          String contact=t2.text;

          //get
          // var url = Uri.parse('https://vanditflutter.000webhostapp.com/insert.php?n=$name&c=$contact');
          // var response = await http.get(url);

          //post
          var url = Uri.parse('https://vanditflutter.000webhostapp.com/insert.php?');
           var response = await http.post(url,body: {'n':"$name",'c':"$contact"});
           print("add");


        }, child: Text("add"))
      ],

    ),);
  }
}

