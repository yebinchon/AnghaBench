
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_ail; } ;


 int XFS_LOG_SYNC ;
 int xfs_ail_push_all_sync (int ) ;
 int xfs_log_force (struct xfs_mount*,int ) ;

int
xchk_checkpoint_log(
 struct xfs_mount *mp)
{
 int error;

 error = xfs_log_force(mp, XFS_LOG_SYNC);
 if (error)
  return error;
 xfs_ail_push_all_sync(mp->m_ail);
 return 0;
}
