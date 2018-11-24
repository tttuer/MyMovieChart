//
//  DetailViewController.swift
//  MyMovieChart
//
//  Created by Jayyoung Yang on 24/11/2018.
//  Copyright © 2018 Jayyoung Yang. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet var wv: WKWebView!
    var mvo: MovieVO!   // 목록 화면에서 전달하는 영화 정보를 받을 변수
    
    override func viewDidLoad() {
        NSLog("linkUrl = \(self.mvo.detail!), title = \(self.mvo.title!)")
        
        // 내비게이션 바의 타이틀에 영화명을 출력한다.
        let navibar = self.navigationItem
        navibar.title = mvo.title
        
        // URLRequest 객체를 생성한다.
        let url = URL(string: self.mvo.detail!)
        let req = URLRequest(url: url!)
        
        // loadRequest 메소드를 호출하면서 req를 인자값으로 전달한다.
        self.wv.load(req)
    }
}
