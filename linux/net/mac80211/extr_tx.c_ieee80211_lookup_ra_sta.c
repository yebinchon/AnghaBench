
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


struct sta_info {int dummy; } ;
struct sk_buff {int data; } ;
struct TYPE_13__ {int bssid; } ;
struct TYPE_10__ {int remote_addr; } ;
struct TYPE_9__ {int sta; } ;
struct TYPE_14__ {TYPE_6__ mgd; TYPE_3__ wds; TYPE_2__ vlan; } ;
struct TYPE_12__ {TYPE_4__* wiphy; int use_4addr; } ;
struct TYPE_8__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; TYPE_5__ wdev; TYPE_1__ vif; } ;
struct TYPE_11__ {int flags; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOLINK ;
 struct sta_info* ERR_PTR (int ) ;







 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WLAN_STA_TDLS_PEER ;
 int WLAN_STA_TDLS_PEER_AUTH ;
 int ieee80211_is_tdls_setup (struct sk_buff*) ;
 int is_multicast_ether_addr (int ) ;
 struct sta_info* rcu_dereference (int ) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int ) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int ) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int ieee80211_lookup_ra_sta(struct ieee80211_sub_if_data *sdata,
       struct sk_buff *skb,
       struct sta_info **sta_out)
{
 struct sta_info *sta;

 switch (sdata->vif.type) {
 case 132:
  sta = rcu_dereference(sdata->u.vlan.sta);
  if (sta) {
   *sta_out = sta;
   return 0;
  } else if (sdata->wdev.use_4addr) {
   return -ENOLINK;
  }

 case 133:
 case 130:
 case 134:
  if (is_multicast_ether_addr(skb->data)) {
   *sta_out = ERR_PTR(-ENOENT);
   return 0;
  }
  sta = sta_info_get_bss(sdata, skb->data);
  break;
 case 128:
  sta = sta_info_get(sdata, sdata->u.wds.remote_addr);
  break;






 case 129:
  if (sdata->wdev.wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS) {
   sta = sta_info_get(sdata, skb->data);
   if (sta && test_sta_flag(sta, WLAN_STA_TDLS_PEER)) {
    if (test_sta_flag(sta,
        WLAN_STA_TDLS_PEER_AUTH)) {
     *sta_out = sta;
     return 0;
    }
    if (!ieee80211_is_tdls_setup(skb))
     return -EINVAL;
   }

  }

  sta = sta_info_get(sdata, sdata->u.mgd.bssid);
  if (!sta)
   return -ENOLINK;
  break;
 default:
  return -EINVAL;
 }

 *sta_out = sta ?: ERR_PTR(-ENOENT);
 return 0;
}
