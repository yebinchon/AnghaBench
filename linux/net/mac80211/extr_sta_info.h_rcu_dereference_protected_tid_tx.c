
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_ampdu_tx {int dummy; } ;
struct TYPE_2__ {int mtx; int * tid_tx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; int lock; } ;


 scalar_t__ lockdep_is_held (int *) ;
 struct tid_ampdu_tx* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static inline struct tid_ampdu_tx *
rcu_dereference_protected_tid_tx(struct sta_info *sta, int tid)
{
 return rcu_dereference_protected(sta->ampdu_mlme.tid_tx[tid],
      lockdep_is_held(&sta->lock) ||
      lockdep_is_held(&sta->ampdu_mlme.mtx));
}
