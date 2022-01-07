
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xfs_log_item {int dummy; } ;
struct xfs_ail {int ail_task; int ail_target; int ail_mount; } ;


 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 scalar_t__ XFS_LSN_CMP (int ,int ) ;
 int smp_wmb () ;
 int wake_up_process (int ) ;
 struct xfs_log_item* xfs_ail_min (struct xfs_ail*) ;
 int xfs_trans_ail_copy_lsn (struct xfs_ail*,int *,int *) ;

void
xfs_ail_push(
 struct xfs_ail *ailp,
 xfs_lsn_t threshold_lsn)
{
 struct xfs_log_item *lip;

 lip = xfs_ail_min(ailp);
 if (!lip || XFS_FORCED_SHUTDOWN(ailp->ail_mount) ||
     XFS_LSN_CMP(threshold_lsn, ailp->ail_target) <= 0)
  return;





 smp_wmb();
 xfs_trans_ail_copy_lsn(ailp, &ailp->ail_target, &threshold_lsn);
 smp_wmb();

 wake_up_process(ailp->ail_task);
}
