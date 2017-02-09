//
//  Contact.swift
//  PhoneBook
//
//  Created by Tardy, Alexander on 2017-02-09.
//  Copyright © 2017 Tardy, Alexander. All rights reserved.
//

import Foundation

class Contact {
    var Name:String
    var Phone:String
    
    let dateCreated:Date
    var dateCreatedAsString:String {
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            formatter.timeStyle = .none
            return formatter.string(from: self.dateCreated)
        }
    }
    var Address:String!
    
    
    var phoneType:PhoneType!
    var typeAsString:String {
        get {
            return self.phoneType.rawValue
        }
    }
    init(theName:String, theAddress:String="", theType:PhoneType = .Home,thePhone:String)
    {
        self.Name = theName
        self.Phone = thePhone;
        self.dateCreated = Date()
        self.Address = theAddress
        self.phoneType = theType
    }
}
