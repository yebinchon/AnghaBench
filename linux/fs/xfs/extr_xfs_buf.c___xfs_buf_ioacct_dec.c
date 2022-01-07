
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_state; TYPE_1__* b_target; int b_lock; } ;
struct TYPE_2__ {int bt_io_count; } ;


 int XFS_BSTATE_IN_FLIGHT ;
 int lockdep_assert_held (int *) ;
 int percpu_counter_dec (int *) ;

__attribute__((used)) static inline void
__xfs_buf_ioacct_dec(
 struct xfs_buf *bp)
{
 lockdep_assert_held(&bp->b_lock);

 if (bp->b_state & XFS_BSTATE_IN_FLIGHT) {
  bp->b_state &= ~XFS_BSTATE_IN_FLIGHT;
  percpu_counter_dec(&bp->b_target->bt_io_count);
 }
}
