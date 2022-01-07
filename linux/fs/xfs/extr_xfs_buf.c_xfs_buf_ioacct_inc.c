
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_flags; int b_state; int b_lock; TYPE_1__* b_target; } ;
struct TYPE_2__ {int bt_io_count; } ;


 int ASSERT (int) ;
 int XBF_ASYNC ;
 int XBF_NO_IOACCT ;
 int XFS_BSTATE_IN_FLIGHT ;
 int percpu_counter_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
xfs_buf_ioacct_inc(
 struct xfs_buf *bp)
{
 if (bp->b_flags & XBF_NO_IOACCT)
  return;

 ASSERT(bp->b_flags & XBF_ASYNC);
 spin_lock(&bp->b_lock);
 if (!(bp->b_state & XFS_BSTATE_IN_FLIGHT)) {
  bp->b_state |= XFS_BSTATE_IN_FLIGHT;
  percpu_counter_inc(&bp->b_target->bt_io_count);
 }
 spin_unlock(&bp->b_lock);
}
