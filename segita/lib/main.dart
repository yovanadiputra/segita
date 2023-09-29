import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luas Segitiga',
      home: LuasSegitigaCalculator(),
    );
  }
}

class LuasSegitigaCalculator extends StatefulWidget {
  @override
  _LuasSegitigaCalculatorState createState() => _LuasSegitigaCalculatorState();
}

class _LuasSegitigaCalculatorState extends State<LuasSegitigaCalculator> {
  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  double luas = 0.0;
  void hitungLuas() {
    double alas = double.tryParse(alasController.text) ?? 0.0;
    double tinggi = double.tryParse(tinggiController.text) ?? 0.0;
    double hasil = (alas * tinggi) / 2;
    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: alasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Alas (panjang)'),
            ),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: hitungLuas,
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 16.0),
            Text('Luas Segitiga: $luas'),
          ],
        ),
      ),
    );
  }
}
