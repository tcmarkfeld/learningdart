import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); // Pop goes to previous page
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Makes the column scrollable
        child: Column(
          // Have to go to pubspec.yaml and uncomment assets and change path to images folder
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity, // Will take up all possible size
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text("Elevated Button",
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            GestureDetector(
              // Allows you to click on the row
              behavior: HitTestBehavior
                  .opaque, // This basically makes the entire row clickable, not just the widgets inside of it
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
            Image.network(
                'data:image/jpeg;base64,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')
          ],
        ),
      ),
    );
  }
}
