//
//  DetailViewController.swift
//  MovieApp
//
//  Created by Lam Tran on 7/7/16.
//  Copyright © 2016 Tan Lam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    var movie: NSDictionary!
    var posterUrl: NSURL!
    var baseUrl = "https://image.tmdb.org/t/p/original"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set up layout
        initLayout()
        
        //  Create url for poster image
        posterUrl = NSURL(string: baseUrl + (movie["poster_path"] as! String))
        posterImage.setImageWithURL(posterUrl)
        
        titleLabel.text = movie["title"] as? String
        overviewLabel.text = movie["overview"] as? String
        
    }
    
    func initLayout(){
        overviewLabel.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        
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

}