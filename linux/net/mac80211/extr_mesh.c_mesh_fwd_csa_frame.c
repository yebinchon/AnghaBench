
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee802_11_elems {TYPE_1__* mesh_chansw_params_ie; } ;
struct TYPE_4__ {struct ieee80211_mgmt* addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {struct ieee80211_mgmt* bssid; struct ieee80211_mgmt* sa; int da; } ;
struct ieee80211_local {scalar_t__ tx_headroom; } ;
struct TYPE_3__ {int mesh_flags; int mesh_ttl; } ;


 int ENOMEM ;
 size_t ETH_ALEN ;
 int WLAN_EID_CHAN_SWITCH_PARAM_INITIATOR ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int eth_broadcast_addr (int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (struct ieee80211_mgmt*,struct ieee80211_mgmt*,size_t) ;
 struct ieee80211_mgmt* skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int mesh_fwd_csa_frame(struct ieee80211_sub_if_data *sdata,
          struct ieee80211_mgmt *mgmt, size_t len,
          struct ieee802_11_elems *elems)
{
 struct ieee80211_mgmt *mgmt_fwd;
 struct sk_buff *skb;
 struct ieee80211_local *local = sdata->local;

 skb = dev_alloc_skb(local->tx_headroom + len);
 if (!skb)
  return -ENOMEM;
 skb_reserve(skb, local->tx_headroom);
 mgmt_fwd = skb_put(skb, len);

 elems->mesh_chansw_params_ie->mesh_ttl--;
 elems->mesh_chansw_params_ie->mesh_flags &=
  ~WLAN_EID_CHAN_SWITCH_PARAM_INITIATOR;

 memcpy(mgmt_fwd, mgmt, len);
 eth_broadcast_addr(mgmt_fwd->da);
 memcpy(mgmt_fwd->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(mgmt_fwd->bssid, sdata->vif.addr, ETH_ALEN);

 ieee80211_tx_skb(sdata, skb);
 return 0;
}
