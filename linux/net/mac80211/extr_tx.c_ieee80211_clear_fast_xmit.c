
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int lock; int fast_tx; } ;
struct ieee80211_fast_tx {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct ieee80211_fast_tx*,int ) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_fast_tx* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_clear_fast_xmit(struct sta_info *sta)
{
 struct ieee80211_fast_tx *fast_tx;

 spin_lock_bh(&sta->lock);
 fast_tx = rcu_dereference_protected(sta->fast_tx,
         lockdep_is_held(&sta->lock));
 RCU_INIT_POINTER(sta->fast_tx, ((void*)0));
 spin_unlock_bh(&sta->lock);

 if (fast_tx)
  kfree_rcu(fast_tx, rcu_head);
}
