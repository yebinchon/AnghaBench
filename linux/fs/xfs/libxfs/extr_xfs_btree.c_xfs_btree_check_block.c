
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int bc_flags; } ;
struct xfs_btree_block {int dummy; } ;


 int XFS_BTREE_LONG_PTRS ;
 int xfs_btree_check_lblock (struct xfs_btree_cur*,struct xfs_btree_block*,int,struct xfs_buf*) ;
 int xfs_btree_check_sblock (struct xfs_btree_cur*,struct xfs_btree_block*,int,struct xfs_buf*) ;

int
xfs_btree_check_block(
 struct xfs_btree_cur *cur,
 struct xfs_btree_block *block,
 int level,
 struct xfs_buf *bp)
{
 if (cur->bc_flags & XFS_BTREE_LONG_PTRS)
  return xfs_btree_check_lblock(cur, block, level, bp);
 else
  return xfs_btree_check_sblock(cur, block, level, bp);
}
