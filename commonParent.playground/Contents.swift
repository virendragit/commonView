import UIKit

//
//func findcommonParent(view1 :UIView , view2 :UIView) -> UIView?{
//    
//      var tView1 : UIView = view1
//      var tView2 : UIView = view2
//    
//     while tView1.superview != nil {
//        while tView2.superview != nil {
//            if tView1.superview === tView2.superview {
//             return tView1.superview!
//            }
//        }
//        
//        tView1 = tView1.superview!
//        tView2 = tView2.superview!
//    }
//    
//    return nil
//    
//}


func commonSuperView(view1: UIView, view2: UIView) -> UIView? {
    var tempView1: UIView = view1
    var tempView2: UIView = view2
    while tempView1.superview != nil {
        while tempView2.superview != nil {
            if tempView1.superview === tempView2.superview {
                return tempView1.superview!
            }
        }
        tempView1 = tempView1.superview!
        tempView2 = view2
    }
    return nil
}
