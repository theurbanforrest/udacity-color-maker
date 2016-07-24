//
//  ViewController.swift
//  ColorMakerWithSliders
//
//  Created by Forrest Ching on 7/24/16.
//  Copyright © 2016 Urban Forrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    
    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.changeColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor() {
        print("slider was changed")
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
    colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

