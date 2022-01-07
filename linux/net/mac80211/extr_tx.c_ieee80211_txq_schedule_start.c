
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ieee80211_local {int * active_txq_lock; int * schedule_round; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_txq_schedule_start(struct ieee80211_hw *hw, u8 ac)
{
 struct ieee80211_local *local = hw_to_local(hw);

 spin_lock_bh(&local->active_txq_lock[ac]);
 local->schedule_round[ac]++;
 spin_unlock_bh(&local->active_txq_lock[ac]);
}
