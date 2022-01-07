
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ac; } ;
struct fq_tin {int dummy; } ;
struct txq_info {TYPE_1__ txq; int schedule_order; int frags; struct fq_tin tin; } ;
struct fq {int lock; } ;
struct ieee80211_local {int * active_txq_lock; int hw; struct fq fq; } ;


 int fq_skb_free_func ;
 int fq_tin_reset (struct fq*,struct fq_tin*,int ) ;
 int ieee80211_purge_tx_queue (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_txq_purge(struct ieee80211_local *local,
    struct txq_info *txqi)
{
 struct fq *fq = &local->fq;
 struct fq_tin *tin = &txqi->tin;

 spin_lock_bh(&fq->lock);
 fq_tin_reset(fq, tin, fq_skb_free_func);
 ieee80211_purge_tx_queue(&local->hw, &txqi->frags);
 spin_unlock_bh(&fq->lock);

 spin_lock_bh(&local->active_txq_lock[txqi->txq.ac]);
 list_del_init(&txqi->schedule_order);
 spin_unlock_bh(&local->active_txq_lock[txqi->txq.ac]);
}
