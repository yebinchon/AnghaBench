
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_10__ {int sa_data; int sa_family; } ;
struct TYPE_9__ {int length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct TYPE_11__ {int prev_bssid_valid; int prev_bssid; } ;
struct wireless_dev {scalar_t__ iftype; int wiphy; int netdev; TYPE_3__ wext; TYPE_4__* current_bss; } ;
struct cfg80211_roam_info {TYPE_5__* bss; int * resp_ie; int resp_ie_len; int * req_ie; int req_ie_len; } ;
struct TYPE_13__ {int bssid; } ;
struct TYPE_12__ {TYPE_5__ pub; } ;


 int ARPHRD_ETHER ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IWEVASSOCREQIE ;
 int IWEVASSOCRESPIE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 TYPE_4__* bss_from_pub (TYPE_5__*) ;
 int cfg80211_hold_bss (TYPE_4__*) ;
 int cfg80211_put_bss (int ,TYPE_5__*) ;
 int cfg80211_unhold_bss (TYPE_4__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_roamed (int ,int ,struct cfg80211_roam_info*,int ) ;
 int wiphy_to_rdev (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void __cfg80211_roamed(struct wireless_dev *wdev,
         struct cfg80211_roam_info *info)
{



 ASSERT_WDEV_LOCK(wdev);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION &&
      wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
  goto out;

 if (WARN_ON(!wdev->current_bss))
  goto out;

 cfg80211_unhold_bss(wdev->current_bss);
 cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 wdev->current_bss = ((void*)0);

 if (WARN_ON(!info->bss))
  return;

 cfg80211_hold_bss(bss_from_pub(info->bss));
 wdev->current_bss = bss_from_pub(info->bss);

 nl80211_send_roamed(wiphy_to_rdev(wdev->wiphy),
       wdev->netdev, info, GFP_KERNEL);
 return;
out:
 cfg80211_put_bss(wdev->wiphy, info->bss);
}
