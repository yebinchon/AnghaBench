
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 scalar_t__ XFS_ALLOC_AGFL_RESERVE ;
 unsigned int XFS_BB_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 scalar_t__ xfs_sb_version_hasfinobt (TYPE_1__*) ;
 scalar_t__ xfs_sb_version_hasreflink (TYPE_1__*) ;
 scalar_t__ xfs_sb_version_hasrmapbt (TYPE_1__*) ;

unsigned int
xfs_alloc_ag_max_usable(
 struct xfs_mount *mp)
{
 unsigned int blocks;

 blocks = XFS_BB_TO_FSB(mp, XFS_FSS_TO_BB(mp, 4));
 blocks += XFS_ALLOC_AGFL_RESERVE;
 blocks += 3;
 if (xfs_sb_version_hasfinobt(&mp->m_sb))
  blocks++;
 if (xfs_sb_version_hasrmapbt(&mp->m_sb))
  blocks++;
 if (xfs_sb_version_hasreflink(&mp->m_sb))
  blocks++;

 return mp->m_sb.sb_agblocks - blocks;
}
