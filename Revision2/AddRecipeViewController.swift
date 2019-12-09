//
//  AddRecipeViewController.swift
//  Revision2
//
//  Created by MAD2_P02 on 5/12/19.
//  Copyright © 2019 MAD2_P02. All rights reserved.
//

import Foundation
import UIKit

class AddRecipeViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtTitle: UITextField!
    
    @IBOutlet weak var txtPreparationTime: UITextField!
    
    @IBOutlet weak var txtIngredient1: UITextField!
    
    @IBOutlet weak var txtIngredient2: UITextField!
    
    @IBOutlet weak var txtIngredient3: UITextField!
    
    @IBOutlet weak var txtIngredient4: UITextField!
    
    @IBOutlet weak var txtIngredient5: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    
    @IBAction func btnAdd(_ sender: Any) {
        if(txtTitle.text == "" || txtPreparationTime.text == "")
        {
            promptAlertFail()
        }
        
        if(txtIngredient1.text == "" &&
            txtIngredient2.text == "" &&
            txtIngredient3.text == "" &&
            txtIngredient4.text == "" &&
            txtIngredient5.text == ""){
            promptAlertFail()
        }
        
    }
    
    @IBAction func showAlert(_ sender: Any) {
        
        
        let alertView = UIAlertController(title: "Empty Field", message: "Please populate the title and preparation time.", preferredStyle: UIAlertController.Style.alert)
        
        alertView.addAction(UIAlertAction(title: "Noted", style: UIAlertAction.Style.default, handler: {_ in }))
        
        self.present(alertView, animated: true, completion: nil)
    }
    
    func promptAlertSuccess(){
        let alertView = UIAlertController(title: "Successfully Added", message: "Please populate the title and preparation time.", preferredStyle: UIAlertController.Style.alert)
        alertView.addAction(UIAlertAction(title: Noted, style: UIAlertAction.Style.default, handler: { _ in
        }))
        self.present(alertView,animated: true,completion: nil)
    }
    
    func promptAlertFail(){
        let alertView = UIAlertController(title: "Empty field", message: "Please populate the title and preparation time.", preferredStyle: UIAlertController.Style.alert)
        alertView.addAction(UIAlertAction(title: "Noted", style: UIAlertAction.Style.default, handler: {_ in}))
        self.present(alertView, animated:true, completion: nil)
    }
    
    
}
