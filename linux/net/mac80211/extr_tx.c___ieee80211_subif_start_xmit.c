
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sta_info {scalar_t__ len; scalar_t__ ip_summed; struct sta_info* next; int * prev; int fast_tx; int sk; } ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; struct sk_buff* next; int * prev; int fast_tx; int sk; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int tx_sk_pacing_shift; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
struct ieee80211_fast_tx {int dummy; } ;
struct TYPE_3__ {scalar_t__ wake_tx_queue; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ ETH_HLEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ IS_ERR (struct sta_info*) ;
 int __ieee80211_select_queue (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info*) ;
 int consume_skb (struct sta_info*) ;
 struct sta_info* ieee80211_build_hdr (struct ieee80211_sub_if_data*,struct sta_info*,int ,struct sta_info*,int ) ;
 scalar_t__ ieee80211_lookup_ra_sta (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info**) ;
 int ieee80211_tx_stats (struct net_device*,scalar_t__) ;
 int ieee80211_xmit (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info*,int ) ;
 scalar_t__ ieee80211_xmit_fast (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee80211_fast_tx*,struct sta_info*) ;
 int kfree_skb (struct sta_info*) ;
 struct ieee80211_fast_tx* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_pacing_shift_update (int ,int ) ;
 scalar_t__ skb_checksum_help (struct sta_info*) ;
 int skb_checksum_start_offset (struct sta_info*) ;
 struct sta_info* skb_gso_segment (struct sta_info*,int ) ;
 scalar_t__ skb_is_gso (struct sta_info*) ;
 scalar_t__ skb_linearize (struct sta_info*) ;
 int skb_set_queue_mapping (struct sta_info*,int ) ;
 int skb_set_transport_header (struct sta_info*,int ) ;
 scalar_t__ unlikely (int) ;

void __ieee80211_subif_start_xmit(struct sk_buff *skb,
      struct net_device *dev,
      u32 info_flags,
      u32 ctrl_flags)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 struct sk_buff *next;

 if (unlikely(skb->len < ETH_HLEN)) {
  kfree_skb(skb);
  return;
 }

 rcu_read_lock();

 if (ieee80211_lookup_ra_sta(sdata, skb, &sta))
  goto out_free;

 if (IS_ERR(sta))
  sta = ((void*)0);

 if (local->ops->wake_tx_queue) {
  u16 queue = __ieee80211_select_queue(sdata, sta, skb);
  skb_set_queue_mapping(skb, queue);
 }

 if (sta) {
  struct ieee80211_fast_tx *fast_tx;

  sk_pacing_shift_update(skb->sk, sdata->local->hw.tx_sk_pacing_shift);

  fast_tx = rcu_dereference(sta->fast_tx);

  if (fast_tx &&
      ieee80211_xmit_fast(sdata, sta, fast_tx, skb))
   goto out;
 }

 if (skb_is_gso(skb)) {
  struct sk_buff *segs;

  segs = skb_gso_segment(skb, 0);
  if (IS_ERR(segs)) {
   goto out_free;
  } else if (segs) {
   consume_skb(skb);
   skb = segs;
  }
 } else {

  if (skb_linearize(skb)) {
   kfree_skb(skb);
   goto out;
  }





  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   skb_set_transport_header(skb,
       skb_checksum_start_offset(skb));
   if (skb_checksum_help(skb))
    goto out_free;
  }
 }

 next = skb;
 while (next) {
  skb = next;
  next = skb->next;

  skb->prev = ((void*)0);
  skb->next = ((void*)0);

  skb = ieee80211_build_hdr(sdata, skb, info_flags,
       sta, ctrl_flags);
  if (IS_ERR(skb))
   goto out;

  ieee80211_tx_stats(dev, skb->len);

  ieee80211_xmit(sdata, sta, skb, 0);
 }
 goto out;
 out_free:
 kfree_skb(skb);
 out:
 rcu_read_unlock();
}
