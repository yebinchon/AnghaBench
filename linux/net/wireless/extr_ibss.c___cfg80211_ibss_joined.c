
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_8__ {int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__* wiphy; TYPE_3__* current_bss; int ssid_len; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_10__ {int pub; } ;
struct TYPE_9__ {int flags; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_BSS_TYPE_IBSS ;
 int IEEE80211_PRIVACY_ANY ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 int WIPHY_FLAG_HAS_STATIC_WEP ;
 TYPE_3__* bss_from_pub (struct cfg80211_bss*) ;
 struct cfg80211_bss* cfg80211_get_bss (TYPE_2__*,struct ieee80211_channel*,int const*,int *,int ,int ,int ) ;
 int cfg80211_hold_bss (TYPE_3__*) ;
 int cfg80211_put_bss (TYPE_2__*,int *) ;
 int cfg80211_unhold_bss (TYPE_3__*) ;
 int cfg80211_upload_connect_keys (struct wireless_dev*) ;
 int memcpy (int ,int const*,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_ibss_bssid (int ,struct net_device*,int const*,int ) ;
 int wiphy_to_rdev (TYPE_2__*) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

void __cfg80211_ibss_joined(struct net_device *dev, const u8 *bssid,
       struct ieee80211_channel *channel)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_bss *bss;




 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_ADHOC))
  return;

 if (!wdev->ssid_len)
  return;

 bss = cfg80211_get_bss(wdev->wiphy, channel, bssid, ((void*)0), 0,
          IEEE80211_BSS_TYPE_IBSS, IEEE80211_PRIVACY_ANY);

 if (WARN_ON(!bss))
  return;

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 }

 cfg80211_hold_bss(bss_from_pub(bss));
 wdev->current_bss = bss_from_pub(bss);

 if (!(wdev->wiphy->flags & WIPHY_FLAG_HAS_STATIC_WEP))
  cfg80211_upload_connect_keys(wdev);

 nl80211_send_ibss_bssid(wiphy_to_rdev(wdev->wiphy), dev, bssid,
    GFP_KERNEL);





}
