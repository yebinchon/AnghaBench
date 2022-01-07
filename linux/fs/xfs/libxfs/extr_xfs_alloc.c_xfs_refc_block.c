
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sb; } ;


 unsigned int XFS_FIBT_BLOCK (struct xfs_mount*) ;
 unsigned int XFS_IBT_BLOCK (struct xfs_mount*) ;
 unsigned int XFS_RMAP_BLOCK (struct xfs_mount*) ;
 scalar_t__ xfs_sb_version_hasfinobt (int *) ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;

unsigned int
xfs_refc_block(
 struct xfs_mount *mp)
{
 if (xfs_sb_version_hasrmapbt(&mp->m_sb))
  return XFS_RMAP_BLOCK(mp) + 1;
 if (xfs_sb_version_hasfinobt(&mp->m_sb))
  return XFS_FIBT_BLOCK(mp) + 1;
 return XFS_IBT_BLOCK(mp) + 1;
}
