import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score Changer App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  increaseNumber() {
    setState(() {
      number++;
    });
  }

  decreaseNumber() {
    setState(() {
      number--;
    });
  }

  resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Score Changer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: Icon(Icons.restore_outlined),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Score is",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 190),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decreaseNumber,
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 11, 28, 128),
                ),
                child: const Text('Decrease',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: increaseNumber,
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 11, 28, 128),
                ),
                child: const Text('Increase',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
