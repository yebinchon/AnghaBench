
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
typedef int uint64_t ;
struct xfs_trans {int t_mountp; } ;
struct xfs_bmbt_irec {int br_state; scalar_t__ br_startoff; int br_blockcount; int br_startblock; } ;


 int XFS_AGB_TO_FSB (int ,int ,int ) ;
 int XFS_DATA_FORK ;
 int XFS_EXT_NORM ;
 int XFS_RMAP_ALLOC ;
 int __xfs_rmap_add (struct xfs_trans*,int ,int ,int ,struct xfs_bmbt_irec*) ;
 int xfs_rmap_update_is_needed (int ,int ) ;

void
xfs_rmap_alloc_extent(
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 uint64_t owner)
{
 struct xfs_bmbt_irec bmap;

 if (!xfs_rmap_update_is_needed(tp->t_mountp, XFS_DATA_FORK))
  return;

 bmap.br_startblock = XFS_AGB_TO_FSB(tp->t_mountp, agno, bno);
 bmap.br_blockcount = len;
 bmap.br_startoff = 0;
 bmap.br_state = XFS_EXT_NORM;

 __xfs_rmap_add(tp, XFS_RMAP_ALLOC, owner, XFS_DATA_FORK, &bmap);
}
