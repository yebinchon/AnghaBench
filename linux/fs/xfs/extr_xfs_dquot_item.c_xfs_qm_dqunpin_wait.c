
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dquot {int q_pincount; int q_pinwait; int q_mount; } ;


 int ASSERT (int ) ;
 int XFS_DQ_IS_LOCKED (struct xfs_dquot*) ;
 scalar_t__ atomic_read (int *) ;
 int wait_event (int ,int) ;
 int xfs_log_force (int ,int ) ;

void
xfs_qm_dqunpin_wait(
 struct xfs_dquot *dqp)
{
 ASSERT(XFS_DQ_IS_LOCKED(dqp));
 if (atomic_read(&dqp->q_pincount) == 0)
  return;




 xfs_log_force(dqp->q_mount, 0);
 wait_event(dqp->q_pinwait, (atomic_read(&dqp->q_pincount) == 0));
}
