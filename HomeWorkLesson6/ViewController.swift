//
//  ViewController.swift
//  HomeWorkLesson6
//
//  Created by Денис Винокуров on 28.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var redView = UIView()
    private var greenView = UIView()
    private var orangeView = UIView()
    private var indigoView = UIView()
    private var blueView = UIView()
    private var origin = CGPoint(x: 0, y: 0)
    private var size = CGSize(width: 300, height: 150)
    private let distanceCard = 30
    private var screenWidth: CGFloat = 0
    private var screenHeight: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = self.view.frame.width
        screenHeight = self.view.frame.height
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        size = CGSize(width: screenWidth - 40, height: 150)
        origin = CGPoint(x: screenWidth / 2 - size.width / 2, y: screenHeight / 2 - (size.height + CGFloat(distanceCard)))
        
        let firstViewFrame = CGRect(origin: origin, size: size)
        
        setupViews(view: blueView, color: .systemBlue, frame: firstViewFrame)
        setupViews(view: orangeView, color: .systemOrange, frame: blueView.frame)
        setupViews(view: greenView, color: .systemGreen, frame: orangeView.frame)
        setupViews(view: redView, color: .systemRed, frame: greenView.frame)
        setupViews(view: indigoView, color: .systemGray, frame: redView.frame)
        
        self.view.addSubview(blueView)
        self.view.addSubview(orangeView)
        self.view.addSubview(greenView)
        self.view.addSubview(redView)
        self.view.addSubview(indigoView)
        
    }
    
    private func setupViews(view: UIView, color: UIColor, frame: CGRect) {
        view.backgroundColor = color
        view.frame = frame
        view.frame.origin.y += CGFloat(distanceCard)
        view.layer.cornerRadius = view.frame.height / 6
    }


}

