#import <UIKit.h>
#import <substarte.h>


// activate sh3lh premium lifetime
// com.elektron.sho3lah

// UIAlert for successfull installed!

%hook AppController

- (void)applicationDidBecomeActive:(id)application {
    NSUserDefaults *validate = [NSUserDefaults standardUserDefaults];
    NSString *alreadyRun = @"already_run";
    if ([validate boolForKey:alreadyRun])
    return;
    [validate setBool:YES forKey:alreadyRun];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sho3lah"
    message:@"Sucessfully Activated!!!" delegate:nil cancelButtonTitle:@"Thanks!"
    otherButtonTitles:nil];
    [alert show];
}

%end

// premium code start

%hook UMONPromoMetaData
-(bool)isPremium {
  return YES;
}
%end

%hook PlayerManger
-(bool)isFreeSubscriber {
  return NO;
}
}

-(void)setSubscribed:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}

-(bool)subscribed {
  return YES;
}
%end

%hook DataXML
-(int)subscribed {
  return 1;
}
%end
