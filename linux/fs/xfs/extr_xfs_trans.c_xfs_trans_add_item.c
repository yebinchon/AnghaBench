
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int t_items; TYPE_1__* t_mountp; } ;
struct xfs_log_item {scalar_t__ li_ailp; int li_trans; int li_flags; TYPE_1__* li_mountp; } ;
struct TYPE_2__ {scalar_t__ m_ail; } ;


 int ASSERT (int) ;
 int XFS_LI_DIRTY ;
 int _RET_IP_ ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int test_bit (int ,int *) ;
 int trace_xfs_trans_add_item (struct xfs_trans*,int ) ;

void
xfs_trans_add_item(
 struct xfs_trans *tp,
 struct xfs_log_item *lip)
{
 ASSERT(lip->li_mountp == tp->t_mountp);
 ASSERT(lip->li_ailp == tp->t_mountp->m_ail);
 ASSERT(list_empty(&lip->li_trans));
 ASSERT(!test_bit(XFS_LI_DIRTY, &lip->li_flags));

 list_add_tail(&lip->li_trans, &tp->t_items);
 trace_xfs_trans_add_item(tp, _RET_IP_);
}
