
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int lock; int fast_rx; } ;
struct ieee80211_fast_rx {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct ieee80211_fast_rx*,int ) ;
 struct ieee80211_fast_rx* rcu_dereference_protected (int ,int) ;
 int rcu_head ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_clear_fast_rx(struct sta_info *sta)
{
 struct ieee80211_fast_rx *old;

 spin_lock_bh(&sta->lock);
 old = rcu_dereference_protected(sta->fast_rx, 1);
 RCU_INIT_POINTER(sta->fast_rx, ((void*)0));
 spin_unlock_bh(&sta->lock);

 if (old)
  kfree_rcu(old, rcu_head);
}
