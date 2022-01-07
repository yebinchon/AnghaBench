
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_cur {int bc_flags; } ;


 int XFS_BTREE_CRC_BLOCKS ;
 size_t XFS_BTREE_LBLOCK_CRC_LEN ;
 size_t XFS_BTREE_LBLOCK_LEN ;
 int XFS_BTREE_LONG_PTRS ;
 size_t XFS_BTREE_SBLOCK_CRC_LEN ;
 size_t XFS_BTREE_SBLOCK_LEN ;

__attribute__((used)) static inline size_t xfs_btree_block_len(struct xfs_btree_cur *cur)
{
 if (cur->bc_flags & XFS_BTREE_LONG_PTRS) {
  if (cur->bc_flags & XFS_BTREE_CRC_BLOCKS)
   return XFS_BTREE_LBLOCK_CRC_LEN;
  return XFS_BTREE_LBLOCK_LEN;
 }
 if (cur->bc_flags & XFS_BTREE_CRC_BLOCKS)
  return XFS_BTREE_SBLOCK_CRC_LEN;
 return XFS_BTREE_SBLOCK_LEN;
}
