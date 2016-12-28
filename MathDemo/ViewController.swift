//
//  ViewController.swift
//  MathDemo
//
//  Created by iOS Student on 12/26/16.
//  Copyright © 2016 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score:Int = 0
    var time: Int = 0
    var timer = Timer()
    var randomButton = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
        start()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        
    }
    
    func countDown() {
        time = time - 1
        lbl_Time.text = String(time)
        if time == 0 {
            time = 10
            score-=1
            lbl_score.text = String(score)
        }
    }
    func start(){
        time = 10
    }
    
    @IBOutlet weak var lbl_score: UILabel!
    @IBOutlet weak var lbl_Time: UILabel!
    @IBOutlet weak var lbl_p1: UILabel!
    @IBOutlet weak var lbl_p2: UILabel!
    @IBOutlet weak var btn_n1: UIButton!
    @IBOutlet weak var btn_n2: UIButton!
    @IBOutlet weak var btn_n3: UIButton!
    
    @IBAction func btn_ActionResult(_ sender: UIButton) {
        
    }
    
    @IBAction func btn_n1_Action(_ sender: AnyObject) {
        if randomButton == 1{
            score+=1
        }else{
            score-=1;
        }
        lbl_score.text = String(score)
        setRandom()
        start()
    }
    
    @IBAction func btn_n2_Action(_ sender: AnyObject) {
        if randomButton == 2{
            score+=1
        }else{
            score-=1;
        }
        lbl_score.text = String(score)
        setRandom()
        start()

    }
    
    @IBAction func btn_n3_Action(_ sender: AnyObject) {
        if randomButton == 3{
            score+=1
        }else{
            score-=1;
        }
        lbl_score.text = String(score)
        setRandom()
        start()
    }
    
    func setRandom(){
        //random number
        let random1 = Int(arc4random_uniform(4))+1
        let random2 = Int(arc4random_uniform(4))+1
        //random button
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
    }
    
    func setResult(randomA:Int,randomB:Int){
        let sumNum = randomA + randomB
        randomButton = Int(arc4random_uniform(3)+1)
        
        print(randomButton)
        
        if randomButton == 1 {
            btn_n1.setTitle(String(sumNum), for: .normal)
            btn_n2.setTitle(String(randomA), for: .normal)
            btn_n3.setTitle(String(randomB), for: .normal)
        } else if randomButton == 2 {
            btn_n1.setTitle(String(randomA), for: .normal)
            btn_n2.setTitle(String(sumNum), for: .normal)
            btn_n3.setTitle(String(randomB), for: .normal)
        }else{
            btn_n1.setTitle(String(randomA), for: .normal)
            btn_n2.setTitle(String(randomB), for: .normal)
            btn_n3.setTitle(String(sumNum), for: .normal)
        }
    }
}

