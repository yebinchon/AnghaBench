
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sta; } ;
struct TYPE_4__ {scalar_t__ backlog_packets; } ;
struct txq_info {int schedule_order; TYPE_2__ txq; TYPE_1__ tin; int frags; } ;
struct ieee80211_txq {size_t ac; } ;
struct TYPE_6__ {int wiphy; } ;
struct ieee80211_local {int * active_txq_lock; int * active_txqs; TYPE_3__ hw; } ;
struct ieee80211_hw {int dummy; } ;


 int NL80211_EXT_FEATURE_AIRTIME_FAIRNESS ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct txq_info* to_txq_info (struct ieee80211_txq*) ;
 scalar_t__ wiphy_ext_feature_isset (int ,int ) ;

void __ieee80211_schedule_txq(struct ieee80211_hw *hw,
         struct ieee80211_txq *txq,
         bool force)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct txq_info *txqi = to_txq_info(txq);

 spin_lock_bh(&local->active_txq_lock[txq->ac]);

 if (list_empty(&txqi->schedule_order) &&
     (force || !skb_queue_empty(&txqi->frags) ||
      txqi->tin.backlog_packets)) {







  if (txqi->txq.sta &&
      wiphy_ext_feature_isset(local->hw.wiphy,
         NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
   list_add(&txqi->schedule_order,
     &local->active_txqs[txq->ac]);
  else
   list_add_tail(&txqi->schedule_order,
          &local->active_txqs[txq->ac]);
 }

 spin_unlock_bh(&local->active_txq_lock[txq->ac]);
}
