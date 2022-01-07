
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int priority; int dev; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int band; } ;


 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int ieee80211_ac_from_tid (int) ;
 int ieee80211_xmit (struct ieee80211_sub_if_data*,int *,struct sk_buff*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_queue_mapping (struct sk_buff*,int) ;

void __ieee80211_tx_skb_tid_band(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, int tid,
     enum nl80211_band band, u32 txdata_flags)
{
 int ac = ieee80211_ac_from_tid(tid);

 skb_reset_mac_header(skb);
 skb_set_queue_mapping(skb, ac);
 skb->priority = tid;

 skb->dev = sdata->dev;






 local_bh_disable();
 IEEE80211_SKB_CB(skb)->band = band;
 ieee80211_xmit(sdata, ((void*)0), skb, txdata_flags);
 local_bh_enable();
}
