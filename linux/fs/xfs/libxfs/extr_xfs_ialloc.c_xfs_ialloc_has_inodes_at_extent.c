
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agino_t ;
typedef scalar_t__ xfs_agblock_t ;
struct xfs_btree_cur {int bc_mp; } ;


 scalar_t__ XFS_AGB_TO_AGINO (int ,scalar_t__) ;
 int xfs_ialloc_has_inode_record (struct xfs_btree_cur*,scalar_t__,scalar_t__,int*) ;

int
xfs_ialloc_has_inodes_at_extent(
 struct xfs_btree_cur *cur,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 bool *exists)
{
 xfs_agino_t low;
 xfs_agino_t high;

 low = XFS_AGB_TO_AGINO(cur->bc_mp, bno);
 high = XFS_AGB_TO_AGINO(cur->bc_mp, bno + len) - 1;

 return xfs_ialloc_has_inode_record(cur, low, high, exists);
}
