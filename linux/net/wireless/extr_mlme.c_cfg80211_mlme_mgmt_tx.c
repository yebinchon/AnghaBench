
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct wireless_dev {size_t iftype; TYPE_7__* current_bss; TYPE_3__* wiphy; } ;
struct TYPE_12__ {scalar_t__ category; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int frame_control; int sa; int bssid; int da; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_mgmt_tx_params {int len; scalar_t__ buf; } ;
struct TYPE_11__ {int bssid; } ;
struct TYPE_14__ {TYPE_4__ pub; } ;
struct TYPE_10__ {TYPE_2__* mgmt_stypes; } ;
struct TYPE_9__ {int tx; } ;
struct TYPE_8__ {int mgmt_tx; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int IEEE80211_FCTL_STYPE ;
 int NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA ;
 int NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED ;
 scalar_t__ WLAN_CATEGORY_PUBLIC ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 int ieee80211_is_mgmt (int ) ;
 int le16_to_cpu (int ) ;
 int rdev_mgmt_tx (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int *) ;
 int wdev_address (struct wireless_dev*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 int wiphy_ext_feature_isset (int *,int ) ;

int cfg80211_mlme_mgmt_tx(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
 const struct ieee80211_mgmt *mgmt;
 u16 stype;

 if (!wdev->wiphy->mgmt_stypes)
  return -EOPNOTSUPP;

 if (!rdev->ops->mgmt_tx)
  return -EOPNOTSUPP;

 if (params->len < 24 + 1)
  return -EINVAL;

 mgmt = (const struct ieee80211_mgmt *)params->buf;

 if (!ieee80211_is_mgmt(mgmt->frame_control))
  return -EINVAL;

 stype = le16_to_cpu(mgmt->frame_control) & IEEE80211_FCTL_STYPE;
 if (!(wdev->wiphy->mgmt_stypes[wdev->iftype].tx & BIT(stype >> 4)))
  return -EINVAL;

 if (ieee80211_is_action(mgmt->frame_control) &&
     mgmt->u.action.category != WLAN_CATEGORY_PUBLIC) {
  int err = 0;

  wdev_lock(wdev);

  switch (wdev->iftype) {
  case 136:
  case 128:
  case 131:
   if (!wdev->current_bss) {
    err = -ENOTCONN;
    break;
   }

   if (!ether_addr_equal(wdev->current_bss->pub.bssid,
           mgmt->bssid)) {
    err = -ENOTCONN;
    break;
   }





   if (wdev->iftype == 136)
    break;


   if (!ether_addr_equal(wdev->current_bss->pub.bssid,
           mgmt->da)) {
    err = -ENOTCONN;
    break;
   }
   break;
  case 135:
  case 129:
  case 134:
   if (!ether_addr_equal(mgmt->bssid, wdev_address(wdev)))
    err = -EINVAL;
   break;
  case 133:
   if (!ether_addr_equal(mgmt->sa, mgmt->bssid)) {
    err = -EINVAL;
    break;
   }




   break;
  case 130:




  case 132:
  default:
   err = -EOPNOTSUPP;
   break;
  }
  wdev_unlock(wdev);

  if (err)
   return err;
 }

 if (!ether_addr_equal(mgmt->sa, wdev_address(wdev))) {




  if (!ieee80211_is_action(mgmt->frame_control) ||
      mgmt->u.action.category != WLAN_CATEGORY_PUBLIC)
   return -EINVAL;
  if (!wdev->current_bss &&
      !wiphy_ext_feature_isset(
       &rdev->wiphy,
       NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA))
   return -EINVAL;
  if (wdev->current_bss &&
      !wiphy_ext_feature_isset(
       &rdev->wiphy,
       NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED))
   return -EINVAL;
 }


 return rdev_mgmt_tx(rdev, wdev, params, cookie);
}
