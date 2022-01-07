
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int is_running; } ;
struct cfg80211_registered_device {TYPE_2__* scan_req; int opencount; } ;
struct TYPE_3__ {int aborted; } ;
struct TYPE_4__ {TYPE_1__ info; int notified; struct wireless_dev* wdev; } ;


 int ASSERT_RTNL () ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int ___cfg80211_scan_done (struct cfg80211_registered_device*,int) ;
 int rdev_stop_p2p_device (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int wdev_running (struct wireless_dev*) ;

void cfg80211_stop_p2p_device(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev)
{
 ASSERT_RTNL();

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_P2P_DEVICE))
  return;

 if (!wdev_running(wdev))
  return;

 rdev_stop_p2p_device(rdev, wdev);
 wdev->is_running = 0;

 rdev->opencount--;

 if (rdev->scan_req && rdev->scan_req->wdev == wdev) {
  if (WARN_ON(!rdev->scan_req->notified))
   rdev->scan_req->info.aborted = 1;
  ___cfg80211_scan_done(rdev, 0);
 }
}
