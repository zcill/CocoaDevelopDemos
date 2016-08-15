//
//  ViewController.swift
//  Demo1_RandomPassword
//
//  Created by Locke on 16/8/15.
//  Copyright © 2016年 Meitu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var lengthButton: NSPopUpButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func generateButtonClicked(sender: NSButton) {
        
//        let pwdLength = 8
        
        let selectedItemTitle : String = lengthButton.itemTitleAtIndex(lengthButton.indexOfSelectedItem)
        
        let pwdLength : Int = Int(selectedItemTitle)!
        
        let password = generateRandomString(pwdLength)
        
        textField.stringValue = password
        
    }

}

