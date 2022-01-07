
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* conn; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int conn_work; int wiphy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_CONN_SCANNING ;
 scalar_t__ CFG80211_CONN_SCAN_AGAIN ;
 struct cfg80211_bss* cfg80211_get_conn_bss (struct wireless_dev*) ;
 int cfg80211_put_bss (int *,struct cfg80211_bss*) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static void __cfg80211_sme_scan_done(struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_bss *bss;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->conn)
  return;

 if (wdev->conn->state != CFG80211_CONN_SCANNING &&
     wdev->conn->state != CFG80211_CONN_SCAN_AGAIN)
  return;

 bss = cfg80211_get_conn_bss(wdev);
 if (bss)
  cfg80211_put_bss(&rdev->wiphy, bss);
 else
  schedule_work(&rdev->conn_work);
}
