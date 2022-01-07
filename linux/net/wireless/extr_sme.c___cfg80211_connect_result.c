
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int wrqu ;
struct TYPE_22__ {int sa_data; int sa_family; } ;
struct TYPE_21__ {int length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
typedef scalar_t__ u8 ;
struct TYPE_23__ {int prev_bssid_valid; int prev_bssid; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_7__* wiphy; TYPE_11__* current_bss; scalar_t__ conn_owner_nlportid; scalar_t__ ssid_len; int * connect_keys; int conn_bss_type; int ssid; TYPE_3__ wext; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_connect_resp_params {scalar_t__ status; TYPE_10__* bss; int bssid; int * resp_ie; int resp_ie_len; int * req_ie; int req_ie_len; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_26__ {TYPE_4__* ops; } ;
struct TYPE_25__ {int band; } ;
struct TYPE_24__ {int connect; } ;
struct TYPE_19__ {TYPE_5__* channel; } ;
struct TYPE_20__ {TYPE_10__ pub; } ;


 int ARPHRD_ETHER ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int IEEE80211_PRIVACY_ANY ;
 int IWEVASSOCREQIE ;
 int IWEVASSOCRESPIE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int WIPHY_FLAG_HAS_STATIC_WEP ;
 int WLAN_EID_COUNTRY ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 TYPE_11__* bss_from_pub (TYPE_10__*) ;
 TYPE_10__* cfg80211_get_bss (TYPE_7__*,int *,int ,int ,scalar_t__,int ,int ) ;
 int cfg80211_hold_bss (TYPE_11__*) ;
 int cfg80211_put_bss (TYPE_7__*,TYPE_10__*) ;
 int cfg80211_sme_free (struct wireless_dev*) ;
 int cfg80211_unhold_bss (TYPE_11__*) ;
 int cfg80211_upload_connect_keys (struct wireless_dev*) ;
 scalar_t__* ieee80211_bss_get_ie (TYPE_10__*,int ) ;
 int kfree (scalar_t__ const*) ;
 scalar_t__* kmemdup (scalar_t__ const*,scalar_t__ const,int ) ;
 int kzfree (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_connect_result (TYPE_6__*,struct net_device*,struct cfg80211_connect_resp_params*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int regulatory_hint_country_ie (TYPE_7__*,int ,scalar_t__ const*,scalar_t__ const) ;
 TYPE_6__* wiphy_to_rdev (TYPE_7__*) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

void __cfg80211_connect_result(struct net_device *dev,
          struct cfg80211_connect_resp_params *cr,
          bool wextev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 const u8 *country_ie;




 ASSERT_WDEV_LOCK(wdev);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION &&
      wdev->iftype != NL80211_IFTYPE_P2P_CLIENT)) {
  cfg80211_put_bss(wdev->wiphy, cr->bss);
  return;
 }

 nl80211_send_connect_result(wiphy_to_rdev(wdev->wiphy), dev, cr,
        GFP_KERNEL);
 if (!cr->bss && (cr->status == WLAN_STATUS_SUCCESS)) {
  WARN_ON_ONCE(!wiphy_to_rdev(wdev->wiphy)->ops->connect);
  cr->bss = cfg80211_get_bss(wdev->wiphy, ((void*)0), cr->bssid,
        wdev->ssid, wdev->ssid_len,
        wdev->conn_bss_type,
        IEEE80211_PRIVACY_ANY);
  if (cr->bss)
   cfg80211_hold_bss(bss_from_pub(cr->bss));
 }

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
  wdev->current_bss = ((void*)0);
 }

 if (cr->status != WLAN_STATUS_SUCCESS) {
  kzfree(wdev->connect_keys);
  wdev->connect_keys = ((void*)0);
  wdev->ssid_len = 0;
  wdev->conn_owner_nlportid = 0;
  if (cr->bss) {
   cfg80211_unhold_bss(bss_from_pub(cr->bss));
   cfg80211_put_bss(wdev->wiphy, cr->bss);
  }
  cfg80211_sme_free(wdev);
  return;
 }

 if (WARN_ON(!cr->bss))
  return;

 wdev->current_bss = bss_from_pub(cr->bss);

 if (!(wdev->wiphy->flags & WIPHY_FLAG_HAS_STATIC_WEP))
  cfg80211_upload_connect_keys(wdev);

 rcu_read_lock();
 country_ie = ieee80211_bss_get_ie(cr->bss, WLAN_EID_COUNTRY);
 if (!country_ie) {
  rcu_read_unlock();
  return;
 }

 country_ie = kmemdup(country_ie, 2 + country_ie[1], GFP_ATOMIC);
 rcu_read_unlock();

 if (!country_ie)
  return;






 regulatory_hint_country_ie(wdev->wiphy, cr->bss->channel->band,
       country_ie + 2, country_ie[1]);
 kfree(country_ie);
}
