//
//  ViewController.swift
//  SwiftySocialPostFeed
//
//  Created by Sugam Kalra on 11/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Social Posting Methods
    
    /**
     Method for posting on facebook
     
     @param sender: UIButton
     
     @return nil
     */
    @IBAction func btnPostToFacebookPressed(_ sender: UIButton)
    {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook)
        {
            if let fbComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            {
                fbComposeViewController.setInitialText("Posting to Facebook")
                fbComposeViewController.add(URL(string: "https://www.facebook.com/"))
                fbComposeViewController.add(UIImage(named: "social_facebook_icon"))
                
                fbComposeViewController.completionHandler = { (result:SLComposeViewControllerResult) -> Void in
                    switch result {
                    case SLComposeViewControllerResult.cancelled:
                        print("Cancelled")
                        break
                        
                    case SLComposeViewControllerResult.done:
                        print("Posted on Facebook")
                        break
                    }
                }

                self.present(fbComposeViewController, animated:true, completion:nil)
            }
        }
        else
        {
            print("No Facebook account found on device")
        }

    }
    
    /**
     Method for posting on twitter
     
     @param sender: UIButton
     
     @return nil
     */
    @IBAction func btnPostToTwitterPressed(_ sender: UIButton)
    {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook)
        {
            if let twComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            {
                twComposeViewController.setInitialText("Posting to Twitter")
                twComposeViewController.add(URL(string: "https://twitter.com/"))
                twComposeViewController.add(UIImage(named: "social_twitter-icon"))
                
                twComposeViewController.completionHandler = { (result:SLComposeViewControllerResult) -> Void in
                    switch result {
                    case SLComposeViewControllerResult.cancelled:
                        print("Cancelled")
                        break
                        
                    case SLComposeViewControllerResult.done:
                        print("Posted on Twitter")
                        break
                    }
                }
                
                self.present(twComposeViewController, animated:true, completion:nil)
            }
        }
        else
        {
            print("No Twitter account found on device")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

