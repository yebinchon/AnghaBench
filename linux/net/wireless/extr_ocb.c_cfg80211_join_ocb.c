
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct ocb_setup {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int __cfg80211_join_ocb (struct cfg80211_registered_device*,struct net_device*,struct ocb_setup*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_join_ocb(struct cfg80211_registered_device *rdev,
        struct net_device *dev,
        struct ocb_setup *setup)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 wdev_lock(wdev);
 err = __cfg80211_join_ocb(rdev, dev, setup);
 wdev_unlock(wdev);

 return err;
}
