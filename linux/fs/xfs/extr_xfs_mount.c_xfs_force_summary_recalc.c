
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sb; } ;


 int XFS_SICK_FS_COUNTERS ;
 int xfs_fs_mark_sick (struct xfs_mount*,int ) ;
 int xfs_sb_version_haslazysbcount (int *) ;

void
xfs_force_summary_recalc(
 struct xfs_mount *mp)
{
 if (!xfs_sb_version_haslazysbcount(&mp->m_sb))
  return;

 xfs_fs_mark_sick(mp, XFS_SICK_FS_COUNTERS);
}
