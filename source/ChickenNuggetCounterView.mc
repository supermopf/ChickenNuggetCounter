using Toybox.WatchUi;
using Toybox.Math;
using Toybox.ActivityMonitor;

class ChickenNuggetCounterView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    	var info = ActivityMonitor.getInfo();
        var calories = info.calories;
        // One Nugget has about 45 cal
        var nuggets = (calories / 45.00);
        
        var NuggetCounter = View.findDrawableById("nuggetsCount");
        NuggetCounter.setText(nuggets.format("%.2f"));
        
       	System.println("cal: " + calories);
       	System.println("Nuggets: " + nuggets);
       	System.println(info);
    	// calories ?? Toybox::Lang::Number    ActivityMontior
    
    }

    // Update the view
    function onUpdate(dc) {
    	var info = ActivityMonitor.getInfo();
        var calories = info.calories;
        // One Nugget has about 45 cal
        var nuggets = (calories / 45.00);
        
        var NuggetCounter = View.findDrawableById("nuggetsCount");
        NuggetCounter.setText(nuggets.format("%.2f"));
        
       	System.println("cal: " + calories);
       	System.println("Nuggets: " + nuggets);
       	System.println(info);
    	// calories ?? Toybox::Lang::Number    ActivityMontior
    
    
    
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
