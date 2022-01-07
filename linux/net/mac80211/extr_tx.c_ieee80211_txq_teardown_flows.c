
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fq {int lock; } ;
struct ieee80211_local {int * cvars; TYPE_1__* ops; struct fq fq; } ;
struct TYPE_2__ {int wake_tx_queue; } ;


 int fq_reset (struct fq*,int ) ;
 int fq_skb_free_func ;
 int kfree (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_txq_teardown_flows(struct ieee80211_local *local)
{
 struct fq *fq = &local->fq;

 if (!local->ops->wake_tx_queue)
  return;

 kfree(local->cvars);
 local->cvars = ((void*)0);

 spin_lock_bh(&fq->lock);
 fq_reset(fq, fq_skb_free_func);
 spin_unlock_bh(&fq->lock);
}
