
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xfs_btree_rec {int dummy; } xfs_btree_rec ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int* bc_ptrs; } ;
struct xfs_btree_block {int dummy; } ;


 int xfs_btree_check_block (struct xfs_btree_cur*,struct xfs_btree_block*,int ,struct xfs_buf*) ;
 struct xfs_btree_block* xfs_btree_get_block (struct xfs_btree_cur*,int ,struct xfs_buf**) ;
 int xfs_btree_get_numrecs (struct xfs_btree_block*) ;
 union xfs_btree_rec* xfs_btree_rec_addr (struct xfs_btree_cur*,int,struct xfs_btree_block*) ;

int
xfs_btree_get_rec(
 struct xfs_btree_cur *cur,
 union xfs_btree_rec **recp,
 int *stat)
{
 struct xfs_btree_block *block;
 struct xfs_buf *bp;
 int ptr;




 ptr = cur->bc_ptrs[0];
 block = xfs_btree_get_block(cur, 0, &bp);
 if (ptr > xfs_btree_get_numrecs(block) || ptr <= 0) {
  *stat = 0;
  return 0;
 }




 *recp = xfs_btree_rec_addr(cur, ptr, block);
 *stat = 1;
 return 0;
}
