
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; int is_running; } ;
struct cfg80211_registered_device {int opencount; } ;


 int ASSERT_RTNL () ;
 scalar_t__ NL80211_IFTYPE_NAN ;
 scalar_t__ WARN_ON (int) ;
 int rdev_stop_nan (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int wdev_running (struct wireless_dev*) ;

void cfg80211_stop_nan(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev)
{
 ASSERT_RTNL();

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_NAN))
  return;

 if (!wdev_running(wdev))
  return;

 rdev_stop_nan(rdev, wdev);
 wdev->is_running = 0;

 rdev->opencount--;
}
