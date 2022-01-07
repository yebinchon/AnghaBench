
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_log_item {struct xfs_buf* li_buf; int li_flags; TYPE_1__* li_ailp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int ail_lock; } ;


 int XFS_LI_FAILED ;
 int lockdep_assert_held (int *) ;
 int test_and_set_bit (int ,int *) ;
 int xfs_buf_hold (struct xfs_buf*) ;

__attribute__((used)) static inline void
xfs_set_li_failed(
 struct xfs_log_item *lip,
 struct xfs_buf *bp)
{
 lockdep_assert_held(&lip->li_ailp->ail_lock);

 if (!test_and_set_bit(XFS_LI_FAILED, &lip->li_flags)) {
  xfs_buf_hold(bp);
  lip->li_buf = bp;
 }
}
