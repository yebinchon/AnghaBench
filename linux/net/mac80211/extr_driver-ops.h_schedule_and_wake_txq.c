
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txq_info {int txq; } ;
struct ieee80211_local {int hw; } ;


 int drv_wake_tx_queue (struct ieee80211_local*,struct txq_info*) ;
 int ieee80211_schedule_txq (int *,int *) ;

__attribute__((used)) static inline void schedule_and_wake_txq(struct ieee80211_local *local,
      struct txq_info *txqi)
{
 ieee80211_schedule_txq(&local->hw, &txqi->txq);
 drv_wake_tx_queue(local, txqi);
}
