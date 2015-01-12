//
//  SettingsViewController.swift
//  tips
//
//  Created by William Castellano on 1/11/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // update tipControl selected button with user defaults (load key)
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("tipControlDefault")
        tipControl.selectedSegmentIndex = intValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTappedDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onEditChanged(sender: AnyObject) {
        var selectedIndex = tipControl.selectedSegmentIndex
        // save the key to user defaults
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(selectedIndex, forKey: "tipControlDefault")
        defaults.synchronize()
    }
}
