
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_rmap_mnr; int m_rmap_maxlevels; } ;


 int XFS_BTREE_MAXLEVELS ;
 int xfs_btree_compute_maxlevels (int ,int ) ;
 scalar_t__ xfs_sb_version_hasreflink (TYPE_1__*) ;

void
xfs_rmapbt_compute_maxlevels(
 struct xfs_mount *mp)
{
 if (xfs_sb_version_hasreflink(&mp->m_sb))
  mp->m_rmap_maxlevels = XFS_BTREE_MAXLEVELS;
 else
  mp->m_rmap_maxlevels = xfs_btree_compute_maxlevels(
    mp->m_rmap_mnr, mp->m_sb.sb_agblocks);
}
