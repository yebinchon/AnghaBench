
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_state; int b_lock; int b_hold; int b_lru; TYPE_1__* b_target; int b_lru_ref; int b_flags; } ;
struct TYPE_2__ {int bt_lru; } ;


 int ASSERT (int) ;
 int XBF_STALE ;
 int XFS_BSTATE_DISPOSE ;
 int _XBF_DELWRI_Q ;
 int __xfs_buf_ioacct_dec (struct xfs_buf*) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ list_lru_del (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_buf_islocked (struct xfs_buf*) ;

void
xfs_buf_stale(
 struct xfs_buf *bp)
{
 ASSERT(xfs_buf_islocked(bp));

 bp->b_flags |= XBF_STALE;






 bp->b_flags &= ~_XBF_DELWRI_Q;







 spin_lock(&bp->b_lock);
 __xfs_buf_ioacct_dec(bp);

 atomic_set(&bp->b_lru_ref, 0);
 if (!(bp->b_state & XFS_BSTATE_DISPOSE) &&
     (list_lru_del(&bp->b_target->bt_lru, &bp->b_lru)))
  atomic_dec(&bp->b_hold);

 ASSERT(atomic_read(&bp->b_hold) >= 1);
 spin_unlock(&bp->b_lock);
}
