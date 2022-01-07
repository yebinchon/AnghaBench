
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dev; } ;
struct TYPE_3__ {int teardown_lock; struct sk_buff* orig_teardown_skb; struct sk_buff* teardown_skb; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_local {int hw; } ;


 int IEEE80211_TX_STAT_ACK ;
 int REPORTS_TX_ACK_STATUS ;
 int WARN_ON (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_hw_check (int *,int ) ;
 int ieee80211_subif_start_xmit (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*) ;

__attribute__((used)) static void ieee80211_tdls_td_tx_handle(struct ieee80211_local *local,
     struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, u32 flags)
{
 struct sk_buff *teardown_skb;
 struct sk_buff *orig_teardown_skb;
 bool is_teardown = 0;


 spin_lock(&sdata->u.mgd.teardown_lock);
 teardown_skb = sdata->u.mgd.teardown_skb;
 orig_teardown_skb = sdata->u.mgd.orig_teardown_skb;
 if ((skb == orig_teardown_skb) && teardown_skb) {
  sdata->u.mgd.teardown_skb = ((void*)0);
  sdata->u.mgd.orig_teardown_skb = ((void*)0);
  is_teardown = 1;
 }
 spin_unlock(&sdata->u.mgd.teardown_lock);

 if (is_teardown) {

  WARN_ON(!ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS));


  if (flags & IEEE80211_TX_STAT_ACK) {
   dev_kfree_skb_any(teardown_skb);
  } else {
   tdls_dbg(sdata,
     "TDLS Resending teardown through AP\n");

   ieee80211_subif_start_xmit(teardown_skb, skb->dev);
  }
 }
}
