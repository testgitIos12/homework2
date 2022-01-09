//
//  ViewController.swift
//  homework2
//
//  Created by Samir Maksutov on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberFromScreen: Double = 0;
    var firstNum: Double = 0;
    var operation: Int = 0;
    var mathSign: Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func Digits(_ sender: UIButton) {
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
//        result.text = result.text! + String(sender.tag)
        numberFromScreen = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 17 {
            firstNum = Double(result.text!)!
            
            
            if sender.tag == 13 { //деление
                result.text = "/"
        }
            else if sender.tag == 14 { // умножение
                result.text = "X"
                }
            else if sender.tag == 15 { // минус
                result.text = "-"
                }
            else if sender.tag == 16 { // плюс
                result.text = "+"
            }
            
            operation = sender.tag
            mathSign = true;
    }
        else if sender.tag == 17 { // посчитать все
            if operation == 13 {
                result.text = String(firstNum / numberFromScreen)
            }
            if operation == 14 {
                result.text = String(firstNum * numberFromScreen)
        }
            if operation == 15 {
                result.text = String(firstNum - numberFromScreen)
        }
            if operation == 16 {
                result.text = String(firstNum + numberFromScreen)
        }
            else if sender.tag == 10 {
                result.text = ""
                firstNum = 0
                numberFromScreen = 0
                operation = 0
            }
            
            
            
            
            
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
}
}
