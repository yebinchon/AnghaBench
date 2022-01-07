
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_flags; int rm_blockcount; int rm_startblock; int rm_owner; int rm_offset; } ;
struct xfs_owner_info {int oi_flags; int oi_offset; int oi_owner; } ;
struct xfs_btree_cur {int dummy; } ;


 int XFS_OWNER_INFO_ATTR_FORK ;
 int XFS_OWNER_INFO_BMBT_BLOCK ;
 int XFS_RMAP_ATTR_FORK ;
 int XFS_RMAP_BMBT_BLOCK ;
 scalar_t__ XFS_RMAP_NON_INODE_OWNER (int ) ;
 int XFS_RMAP_UNWRITTEN ;
 int xfs_rmap_map (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_map_shared (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;

int
xfs_rmap_map_raw(
 struct xfs_btree_cur *cur,
 struct xfs_rmap_irec *rmap)
{
 struct xfs_owner_info oinfo;

 oinfo.oi_owner = rmap->rm_owner;
 oinfo.oi_offset = rmap->rm_offset;
 oinfo.oi_flags = 0;
 if (rmap->rm_flags & XFS_RMAP_ATTR_FORK)
  oinfo.oi_flags |= XFS_OWNER_INFO_ATTR_FORK;
 if (rmap->rm_flags & XFS_RMAP_BMBT_BLOCK)
  oinfo.oi_flags |= XFS_OWNER_INFO_BMBT_BLOCK;

 if (rmap->rm_flags || XFS_RMAP_NON_INODE_OWNER(rmap->rm_owner))
  return xfs_rmap_map(cur, rmap->rm_startblock,
    rmap->rm_blockcount,
    rmap->rm_flags & XFS_RMAP_UNWRITTEN,
    &oinfo);

 return xfs_rmap_map_shared(cur, rmap->rm_startblock,
   rmap->rm_blockcount,
   rmap->rm_flags & XFS_RMAP_UNWRITTEN,
   &oinfo);
}
