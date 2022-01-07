
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ conn_owner_nlportid; int ssid_len; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ENOLINK ;
 int __cfg80211_clear_ibss (struct net_device*,int) ;
 int rdev_leave_ibss (struct cfg80211_registered_device*,struct net_device*) ;

int __cfg80211_leave_ibss(struct cfg80211_registered_device *rdev,
     struct net_device *dev, bool nowext)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->ssid_len)
  return -ENOLINK;

 err = rdev_leave_ibss(rdev, dev);

 if (err)
  return err;

 wdev->conn_owner_nlportid = 0;
 __cfg80211_clear_ibss(dev, nowext);

 return 0;
}
