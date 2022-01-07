
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int xs_kobj; } ;
struct xfs_mount {int m_kobj; TYPE_1__ m_stats; int m_reclaim_work; int m_ail; int m_flags; int m_rootip; } ;


 int SYNC_WAIT ;
 int XFS_LOG_SYNC ;
 int XFS_MOUNT_UNMOUNTING ;
 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int xfs_ail_push_all_sync (int ) ;
 int xfs_da_unmount (struct xfs_mount*) ;
 int xfs_discard_wq ;
 int xfs_error_sysfs_del (struct xfs_mount*) ;
 int xfs_errortag_clearall (struct xfs_mount*) ;
 int xfs_errortag_del (struct xfs_mount*) ;
 int xfs_extent_busy_wait_all (struct xfs_mount*) ;
 int xfs_free_perag (struct xfs_mount*) ;
 int xfs_fs_unreserve_ag_blocks (struct xfs_mount*) ;
 int xfs_health_unmount (struct xfs_mount*) ;
 int xfs_irele (int ) ;
 int xfs_log_force (struct xfs_mount*,int ) ;
 int xfs_log_sbcount (struct xfs_mount*) ;
 int xfs_log_unmount (struct xfs_mount*) ;
 int xfs_qm_unmount (struct xfs_mount*) ;
 int xfs_qm_unmount_quotas (struct xfs_mount*) ;
 int xfs_reclaim_inodes (struct xfs_mount*,int ) ;
 int xfs_reserve_blocks (struct xfs_mount*,scalar_t__*,int *) ;
 int xfs_rtunmount_inodes (struct xfs_mount*) ;
 int xfs_stop_block_reaping (struct xfs_mount*) ;
 int xfs_sysfs_del (int *) ;
 int xfs_uuid_unmount (struct xfs_mount*) ;
 int xfs_warn (struct xfs_mount*,char*) ;

void
xfs_unmountfs(
 struct xfs_mount *mp)
{
 uint64_t resblks;
 int error;

 xfs_stop_block_reaping(mp);
 xfs_fs_unreserve_ag_blocks(mp);
 xfs_qm_unmount_quotas(mp);
 xfs_rtunmount_inodes(mp);
 xfs_irele(mp->m_rootip);
 xfs_log_force(mp, XFS_LOG_SYNC);





 xfs_extent_busy_wait_all(mp);
 flush_workqueue(xfs_discard_wq);







 mp->m_flags |= XFS_MOUNT_UNMOUNTING;




 xfs_ail_push_all_sync(mp->m_ail);







 cancel_delayed_work_sync(&mp->m_reclaim_work);
 xfs_reclaim_inodes(mp, SYNC_WAIT);
 xfs_health_unmount(mp);

 xfs_qm_unmount(mp);
 resblks = 0;
 error = xfs_reserve_blocks(mp, &resblks, ((void*)0));
 if (error)
  xfs_warn(mp, "Unable to free reserved block pool. "
    "Freespace may not be correct on next mount.");

 error = xfs_log_sbcount(mp);
 if (error)
  xfs_warn(mp, "Unable to update superblock counters. "
    "Freespace may not be correct on next mount.");


 xfs_log_unmount(mp);
 xfs_da_unmount(mp);
 xfs_uuid_unmount(mp);




 xfs_free_perag(mp);

 xfs_errortag_del(mp);
 xfs_error_sysfs_del(mp);
 xfs_sysfs_del(&mp->m_stats.xs_kobj);
 xfs_sysfs_del(&mp->m_kobj);
}
