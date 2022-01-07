
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_active_trans; } ;


 int SYNC_WAIT ;
 int WARN_ON (int) ;
 int XFS_LOG_SYNC ;
 scalar_t__ atomic_read (int *) ;
 int delay (int) ;
 int xfs_log_force (struct xfs_mount*,int ) ;
 int xfs_log_quiesce (struct xfs_mount*) ;
 int xfs_log_sbcount (struct xfs_mount*) ;
 int xfs_reclaim_inodes (struct xfs_mount*,int ) ;
 int xfs_warn (struct xfs_mount*,char*) ;

void
xfs_quiesce_attr(
 struct xfs_mount *mp)
{
 int error = 0;


 while (atomic_read(&mp->m_active_trans) > 0)
  delay(100);


 xfs_log_force(mp, XFS_LOG_SYNC);


 xfs_reclaim_inodes(mp, 0);
 xfs_reclaim_inodes(mp, SYNC_WAIT);


 error = xfs_log_sbcount(mp);
 if (error)
  xfs_warn(mp, "xfs_attr_quiesce: failed to log sb changes. "
    "Frozen image may not be consistent.");




 WARN_ON(atomic_read(&mp->m_active_trans) != 0);

 xfs_log_quiesce(mp);
}
