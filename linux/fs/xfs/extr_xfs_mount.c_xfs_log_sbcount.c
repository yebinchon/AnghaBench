
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_sb; } ;
typedef TYPE_1__ xfs_mount_t ;


 int SB_FREEZE_COMPLETE ;
 int xfs_fs_writable (TYPE_1__*,int ) ;
 int xfs_sb_version_haslazysbcount (int *) ;
 int xfs_sync_sb (TYPE_1__*,int) ;

int
xfs_log_sbcount(xfs_mount_t *mp)
{

 if (!xfs_fs_writable(mp, SB_FREEZE_COMPLETE))
  return 0;





 if (!xfs_sb_version_haslazysbcount(&mp->m_sb))
  return 0;

 return xfs_sync_sb(mp, 1);
}
