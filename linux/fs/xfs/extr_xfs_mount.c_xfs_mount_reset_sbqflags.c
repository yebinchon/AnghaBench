
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_qflags; } ;
struct xfs_mount {int m_sb_lock; TYPE_1__ m_sb; scalar_t__ m_qflags; } ;


 int SB_FREEZE_WRITE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_fs_writable (struct xfs_mount*,int ) ;
 int xfs_sync_sb (struct xfs_mount*,int) ;

int
xfs_mount_reset_sbqflags(
 struct xfs_mount *mp)
{
 mp->m_qflags = 0;


 if (mp->m_sb.sb_qflags == 0)
  return 0;
 spin_lock(&mp->m_sb_lock);
 mp->m_sb.sb_qflags = 0;
 spin_unlock(&mp->m_sb_lock);

 if (!xfs_fs_writable(mp, SB_FREEZE_WRITE))
  return 0;

 return xfs_sync_sb(mp, 0);
}
