
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_5__ {int qli_item; TYPE_2__* qli_dquot; } ;
struct TYPE_6__ {TYPE_1__ q_logitem; } ;
typedef TYPE_2__ xfs_dquot_t ;


 int ASSERT (int) ;
 int XFS_DQ_IS_LOCKED (TYPE_2__*) ;
 int xfs_trans_add_item (int *,int *) ;

void
xfs_trans_dqjoin(
 xfs_trans_t *tp,
 xfs_dquot_t *dqp)
{
 ASSERT(XFS_DQ_IS_LOCKED(dqp));
 ASSERT(dqp->q_logitem.qli_dquot == dqp);




 xfs_trans_add_item(tp, &dqp->q_logitem.qli_item);
}
