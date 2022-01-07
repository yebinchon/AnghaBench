
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; int netdev; int wiphy; TYPE_2__* current_bss; } ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int ether_addr_equal (int ,int const*) ;
 int nl80211_send_port_authorized (int ,int ,int const*) ;
 int wiphy_to_rdev (int ) ;

void __cfg80211_port_authorized(struct wireless_dev *wdev, const u8 *bssid)
{
 ASSERT_WDEV_LOCK(wdev);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return;

 if (WARN_ON(!wdev->current_bss) ||
     WARN_ON(!ether_addr_equal(wdev->current_bss->pub.bssid, bssid)))
  return;

 nl80211_send_port_authorized(wiphy_to_rdev(wdev->wiphy), wdev->netdev,
         bssid);
}
