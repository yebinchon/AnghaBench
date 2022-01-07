
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_mount {int m_sb; } ;


 int XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_REFCOUNT_FREE_COW ;
 int XFS_RMAP_OWN_COW ;
 int __xfs_refcount_add (struct xfs_trans*,int ,int ,int ) ;
 int xfs_rmap_free_extent (struct xfs_trans*,int ,int ,int ,int ) ;
 int xfs_sb_version_hasreflink (int *) ;

void
xfs_refcount_free_cow_extent(
 struct xfs_trans *tp,
 xfs_fsblock_t fsb,
 xfs_extlen_t len)
{
 struct xfs_mount *mp = tp->t_mountp;

 if (!xfs_sb_version_hasreflink(&mp->m_sb))
  return;


 xfs_rmap_free_extent(tp, XFS_FSB_TO_AGNO(mp, fsb),
   XFS_FSB_TO_AGBNO(mp, fsb), len, XFS_RMAP_OWN_COW);
 __xfs_refcount_add(tp, XFS_REFCOUNT_FREE_COW, fsb, len);
}
