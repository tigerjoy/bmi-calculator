import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        elevation: 20.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 30.0, top: 30.0, bottom: 20.0),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 25.0),
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: kHeadingTextStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '18,5 - 25 kg/m2',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: kMessageTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE YOUR BMI',
          )
        ],
      ),
    );
  }
}
