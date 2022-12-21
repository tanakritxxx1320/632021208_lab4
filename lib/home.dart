import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupItem = ""; 
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("inputwidgets"),
      ),
      body: Column(
        children: [
          Text("TextFormfield #1 simple TextFormField"),
          TextFormField(),

          Text("TextFormfield #2 keyboardtype and password"),
          TextFormField(
            obscureText: true,
          ),
          Text("TexFormField#3 Decoration"),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "This is LabelText",
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
              )
            )
          ),

          Text("RadiolistTile #1 simple"),
          RadioListTile(
            title: Text("Item title 1"),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'Item title',
            groupValue: groupItem,
            onChanged: (value) {
              
              setState(() {
                groupItem = value!;
              });print(groupItem);
            },

          ),
          RadioListTile(
            title: Text("Item title 2"),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'Item title2',
            groupValue: groupItem,
            onChanged: (value) {
              
              setState(() {
                groupItem = value!;
              }); print(groupItem);

            },
            

          ),
          Text(groupItem),
          
          RadioListTile(
            tileColor: Colors.blue,
            title: Text("Item title 3"),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'Item title3',
            groupValue: groupItem,
            onChanged: (value) {
              
              setState(() {
                groupItem = value!;
              }); print(groupItem);

            },
          ),
          Text("checkboxlisttile#1 simple"),
          CheckboxListTile(
            title :Text('Libary'),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },


          )

        ],
      ),
    );
  }
}