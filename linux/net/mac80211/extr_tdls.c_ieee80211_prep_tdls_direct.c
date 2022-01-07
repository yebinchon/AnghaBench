
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


typedef int u8 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int const* bssid; } ;
struct TYPE_10__ {TYPE_2__ mgd; } ;
struct TYPE_8__ {int const* addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct TYPE_11__ {int action_code; int dialog_token; void* capability; } ;
struct TYPE_12__ {TYPE_4__ tdls_discover_resp; } ;
struct TYPE_13__ {TYPE_5__ u; int category; } ;
struct TYPE_14__ {TYPE_6__ action; } ;
struct ieee80211_mgmt {TYPE_7__ u; void* frame_control; int bssid; int sa; int da; } ;


 int EINVAL ;
 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_ACTION ;
 int WLAN_CATEGORY_PUBLIC ;

 void* cpu_to_le16 (int) ;
 int ieee80211_get_tdls_sta_capab (struct ieee80211_sub_if_data*,int ) ;
 int memcpy (int ,int const*,int ) ;
 int skb_put (struct sk_buff*,int) ;
 struct ieee80211_mgmt* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int
ieee80211_prep_tdls_direct(struct wiphy *wiphy, struct net_device *dev,
      const u8 *peer, u8 action_code, u8 dialog_token,
      u16 status_code, struct sk_buff *skb)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_mgmt *mgmt;

 mgmt = skb_put_zero(skb, 24);
 memcpy(mgmt->da, peer, ETH_ALEN);
 memcpy(mgmt->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(mgmt->bssid, sdata->u.mgd.bssid, ETH_ALEN);

 mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
       IEEE80211_STYPE_ACTION);

 switch (action_code) {
 case 128:
  skb_put(skb, 1 + sizeof(mgmt->u.action.u.tdls_discover_resp));
  mgmt->u.action.category = WLAN_CATEGORY_PUBLIC;
  mgmt->u.action.u.tdls_discover_resp.action_code =
   128;
  mgmt->u.action.u.tdls_discover_resp.dialog_token =
   dialog_token;
  mgmt->u.action.u.tdls_discover_resp.capability =
   cpu_to_le16(ieee80211_get_tdls_sta_capab(sdata,
         status_code));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
