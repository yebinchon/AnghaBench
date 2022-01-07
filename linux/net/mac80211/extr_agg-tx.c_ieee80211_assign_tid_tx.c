
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_ampdu_tx {int dummy; } ;
struct TYPE_2__ {int * tid_tx; int mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; int lock; } ;


 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,struct tid_ampdu_tx*) ;

void ieee80211_assign_tid_tx(struct sta_info *sta, int tid,
        struct tid_ampdu_tx *tid_tx)
{
 lockdep_assert_held(&sta->ampdu_mlme.mtx);
 lockdep_assert_held(&sta->lock);
 rcu_assign_pointer(sta->ampdu_mlme.tid_tx[tid], tid_tx);
}
