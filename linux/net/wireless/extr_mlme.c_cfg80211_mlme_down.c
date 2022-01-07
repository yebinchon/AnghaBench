
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {TYPE_3__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_5__ {int bssid; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int deauth; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ETH_ALEN ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_mlme_deauth (struct cfg80211_registered_device*,struct net_device*,int *,int *,int ,int ,int) ;
 int memcpy (int *,int ,int) ;

void cfg80211_mlme_down(struct cfg80211_registered_device *rdev,
   struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 u8 bssid[ETH_ALEN];

 ASSERT_WDEV_LOCK(wdev);

 if (!rdev->ops->deauth)
  return;

 if (!wdev->current_bss)
  return;

 memcpy(bssid, wdev->current_bss->pub.bssid, ETH_ALEN);
 cfg80211_mlme_deauth(rdev, dev, bssid, ((void*)0), 0,
        WLAN_REASON_DEAUTH_LEAVING, 0);
}
