
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int vif; } ;
struct ieee80211_tx_info {int hw_queue; TYPE_1__ control; } ;
struct ieee80211_hw {int queues; } ;
struct ieee80211_local {int queue_stop_reason_lock; int * pending; struct ieee80211_hw hw; } ;


 int IEEE80211_QUEUE_STOP_REASON_SKB_ADD ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ WARN_ON (int) ;
 int __ieee80211_stop_queue (struct ieee80211_hw*,int,int ,int) ;
 int __ieee80211_wake_queue (struct ieee80211_hw*,int,int ,int,unsigned long*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_add_pending_skbs(struct ieee80211_local *local,
    struct sk_buff_head *skbs)
{
 struct ieee80211_hw *hw = &local->hw;
 struct sk_buff *skb;
 unsigned long flags;
 int queue, i;

 spin_lock_irqsave(&local->queue_stop_reason_lock, flags);
 while ((skb = skb_dequeue(skbs))) {
  struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

  if (WARN_ON(!info->control.vif)) {
   ieee80211_free_txskb(&local->hw, skb);
   continue;
  }

  queue = info->hw_queue;

  __ieee80211_stop_queue(hw, queue,
    IEEE80211_QUEUE_STOP_REASON_SKB_ADD,
    0);

  __skb_queue_tail(&local->pending[queue], skb);
 }

 for (i = 0; i < hw->queues; i++)
  __ieee80211_wake_queue(hw, i,
   IEEE80211_QUEUE_STOP_REASON_SKB_ADD,
   0, &flags);
 spin_unlock_irqrestore(&local->queue_stop_reason_lock, flags);
}
