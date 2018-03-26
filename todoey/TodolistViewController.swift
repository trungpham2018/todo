//
//  ViewController.swift
//  todoey
//
//  Created by Trung Pham on 3/26/18.
//  Copyright © 2018 Trung Pham. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
let itemArray = ["first item", "second", "third"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    //TableView Delegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:  "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        //cell.backgroundColor? = UIColor(red)
        
        return cell
    }
    //TableView Delegate Methods: fire whenver click on any cell
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    

}

