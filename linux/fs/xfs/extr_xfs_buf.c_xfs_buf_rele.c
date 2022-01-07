
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int b_flags; int b_state; int b_lock; int b_rhash_head; int b_lru; TYPE_1__* b_target; int b_hold; int b_lru_ref; struct xfs_perag* b_pag; } ;
typedef TYPE_2__ xfs_buf_t ;
struct xfs_perag {int pag_buf_lock; int pag_buf_hash; } ;
struct TYPE_8__ {int bt_lru; } ;


 int ASSERT (int) ;
 int XBF_STALE ;
 int XFS_BSTATE_DISPOSE ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int __xfs_buf_ioacct_dec (TYPE_2__*) ;
 int atomic_dec_and_lock (int *,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 scalar_t__ list_lru_add (int *,int *) ;
 int list_lru_del (int *,int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_buf_rele (TYPE_2__*,int ) ;
 int xfs_buf_free (TYPE_2__*) ;
 int xfs_buf_hash_params ;
 int xfs_buf_ioacct_dec (TYPE_2__*) ;
 int xfs_perag_put (struct xfs_perag*) ;

void
xfs_buf_rele(
 xfs_buf_t *bp)
{
 struct xfs_perag *pag = bp->b_pag;
 bool release;
 bool freebuf = 0;

 trace_xfs_buf_rele(bp, _RET_IP_);

 if (!pag) {
  ASSERT(list_empty(&bp->b_lru));
  if (atomic_dec_and_test(&bp->b_hold)) {
   xfs_buf_ioacct_dec(bp);
   xfs_buf_free(bp);
  }
  return;
 }

 ASSERT(atomic_read(&bp->b_hold) > 0);
 spin_lock(&bp->b_lock);
 release = atomic_dec_and_lock(&bp->b_hold, &pag->pag_buf_lock);
 if (!release) {






  if ((atomic_read(&bp->b_hold) == 1) && !list_empty(&bp->b_lru))
   __xfs_buf_ioacct_dec(bp);
  goto out_unlock;
 }


 __xfs_buf_ioacct_dec(bp);
 if (!(bp->b_flags & XBF_STALE) && atomic_read(&bp->b_lru_ref)) {





  if (list_lru_add(&bp->b_target->bt_lru, &bp->b_lru)) {
   bp->b_state &= ~XFS_BSTATE_DISPOSE;
   atomic_inc(&bp->b_hold);
  }
  spin_unlock(&pag->pag_buf_lock);
 } else {






  if (!(bp->b_state & XFS_BSTATE_DISPOSE)) {
   list_lru_del(&bp->b_target->bt_lru, &bp->b_lru);
  } else {
   ASSERT(list_empty(&bp->b_lru));
  }

  ASSERT(!(bp->b_flags & _XBF_DELWRI_Q));
  rhashtable_remove_fast(&pag->pag_buf_hash, &bp->b_rhash_head,
           xfs_buf_hash_params);
  spin_unlock(&pag->pag_buf_lock);
  xfs_perag_put(pag);
  freebuf = 1;
 }

out_unlock:
 spin_unlock(&bp->b_lock);

 if (freebuf)
  xfs_buf_free(bp);
}
