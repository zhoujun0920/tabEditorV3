//
//  myCell.swift
//  horizontalCollectionView
//
//  Created by Jun Zhou on 9/3/15.
//  Copyright (c) 2015 Jun Zhou. All rights reserved.
//

import Foundation
import UIKit

class myCell: UICollectionViewCell {
    var textLabel: UILabel!
    var imageView: UIImageView!
    var trueWidth: CGFloat = CGFloat()
    var trueHeight: CGFloat = CGFloat()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height * 11 / 20))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        
        textLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height * 1 / 20))
        textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        textLabel.textAlignment = NSTextAlignment.Center
        contentView.addSubview(textLabel)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}