
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;


 int __cfg80211_sme_scan_done (struct net_device*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

void cfg80211_sme_scan_done(struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 wdev_lock(wdev);
 __cfg80211_sme_scan_done(dev);
 wdev_unlock(wdev);
}
