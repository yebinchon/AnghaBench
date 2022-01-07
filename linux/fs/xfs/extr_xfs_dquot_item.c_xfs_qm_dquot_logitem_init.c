
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dq_logitem {struct xfs_dquot* qli_dquot; int qli_item; } ;
struct xfs_dquot {int q_mount; struct xfs_dq_logitem q_logitem; } ;


 int XFS_LI_DQUOT ;
 int xfs_dquot_item_ops ;
 int xfs_log_item_init (int ,int *,int ,int *) ;

void
xfs_qm_dquot_logitem_init(
 struct xfs_dquot *dqp)
{
 struct xfs_dq_logitem *lp = &dqp->q_logitem;

 xfs_log_item_init(dqp->q_mount, &lp->qli_item, XFS_LI_DQUOT,
     &xfs_dquot_item_ops);
 lp->qli_dquot = dqp;
}
