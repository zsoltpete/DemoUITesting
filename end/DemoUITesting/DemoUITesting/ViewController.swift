//
//  ViewController.swift
//  DemoUITesting
//
//  Created by Zsolt Pete on 2019. 09. 28..
//  Copyright © 2019. Zsolt Pete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLabels()
        self.initButton()
        self.addAccesibilityIdentifiers()
    }
    
    private func initLabels() {
        self.topLabel.text = "Welcome"
        self.middleLabel.text = "Demo App"
    }
    
    private func initButton() {
        self.bottomButton.setTitle("Hello", for: .normal)
    }
    
    private func addAccesibilityIdentifiers() {
        self.topLabel.accessibilityIdentifier = AccesibilityIds.TopLabel.rawValue
        self.middleLabel.accessibilityIdentifier = AccesibilityIds.MiddleLabel.rawValue
        self.bottomButton.accessibilityIdentifier = AccesibilityIds.BottomButton.rawValue
    }

    @IBAction func bottomButtonPushed(_ sender: Any) {
        self.topLabel.isHidden = true
        self.middleLabel.text = "GoodBye"
        self.middleLabel.text = "Bye"
    }
    
}

