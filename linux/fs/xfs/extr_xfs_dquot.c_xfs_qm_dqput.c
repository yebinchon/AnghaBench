
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_quotainfo {int qi_lru; } ;
struct xfs_dquot {scalar_t__ q_nrefs; TYPE_1__* q_mount; int q_lru; } ;
struct TYPE_2__ {struct xfs_quotainfo* m_quotainfo; } ;


 int ASSERT (int) ;
 int XFS_DQ_IS_LOCKED (struct xfs_dquot*) ;
 int XFS_STATS_INC (TYPE_1__*,int ) ;
 scalar_t__ list_lru_add (int *,int *) ;
 int trace_xfs_dqput (struct xfs_dquot*) ;
 int trace_xfs_dqput_free (struct xfs_dquot*) ;
 int xfs_dqunlock (struct xfs_dquot*) ;
 int xs_qm_dquot_unused ;

void
xfs_qm_dqput(
 struct xfs_dquot *dqp)
{
 ASSERT(dqp->q_nrefs > 0);
 ASSERT(XFS_DQ_IS_LOCKED(dqp));

 trace_xfs_dqput(dqp);

 if (--dqp->q_nrefs == 0) {
  struct xfs_quotainfo *qi = dqp->q_mount->m_quotainfo;
  trace_xfs_dqput_free(dqp);

  if (list_lru_add(&qi->qi_lru, &dqp->q_lru))
   XFS_STATS_INC(dqp->q_mount, xs_qm_dquot_unused);
 }
 xfs_dqunlock(dqp);
}
