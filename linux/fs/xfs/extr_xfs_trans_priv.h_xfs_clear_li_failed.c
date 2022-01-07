
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_log_item {struct xfs_buf* li_buf; int li_flags; TYPE_1__* li_ailp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int ail_lock; } ;


 int ASSERT (int ) ;
 int XFS_LI_FAILED ;
 int XFS_LI_IN_AIL ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xfs_buf_rele (struct xfs_buf*) ;

__attribute__((used)) static inline void
xfs_clear_li_failed(
 struct xfs_log_item *lip)
{
 struct xfs_buf *bp = lip->li_buf;

 ASSERT(test_bit(XFS_LI_IN_AIL, &lip->li_flags));
 lockdep_assert_held(&lip->li_ailp->ail_lock);

 if (test_and_clear_bit(XFS_LI_FAILED, &lip->li_flags)) {
  lip->li_buf = ((void*)0);
  xfs_buf_rele(bp);
 }
}
