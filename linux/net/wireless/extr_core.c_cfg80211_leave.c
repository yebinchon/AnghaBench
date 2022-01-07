
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int __cfg80211_leave (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

void cfg80211_leave(struct cfg80211_registered_device *rdev,
      struct wireless_dev *wdev)
{
 wdev_lock(wdev);
 __cfg80211_leave(rdev, wdev);
 wdev_unlock(wdev);
}
