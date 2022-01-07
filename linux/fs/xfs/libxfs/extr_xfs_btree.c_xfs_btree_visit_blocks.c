
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_btree_visit_blocks_fn ;
typedef union xfs_btree_ptr {int dummy; } xfs_btree_ptr ;
struct xfs_btree_cur {int bc_nlevels; TYPE_1__* bc_ops; } ;
struct xfs_btree_block {int dummy; } ;
struct TYPE_2__ {int (* init_ptr_from_cur ) (struct xfs_btree_cur*,union xfs_btree_ptr*) ;} ;


 int ENOENT ;
 int stub1 (struct xfs_btree_cur*,union xfs_btree_ptr*) ;
 int xfs_btree_copy_ptrs (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int) ;
 int xfs_btree_lookup_get_block (struct xfs_btree_cur*,int,union xfs_btree_ptr*,struct xfs_btree_block**) ;
 union xfs_btree_ptr* xfs_btree_ptr_addr (struct xfs_btree_cur*,int,struct xfs_btree_block*) ;
 int xfs_btree_readahead_ptr (struct xfs_btree_cur*,union xfs_btree_ptr*,int) ;
 int xfs_btree_visit_block (struct xfs_btree_cur*,int,int ,void*) ;

int
xfs_btree_visit_blocks(
 struct xfs_btree_cur *cur,
 xfs_btree_visit_blocks_fn fn,
 void *data)
{
 union xfs_btree_ptr lptr;
 int level;
 struct xfs_btree_block *block = ((void*)0);
 int error = 0;

 cur->bc_ops->init_ptr_from_cur(cur, &lptr);


 for (level = cur->bc_nlevels - 1; level >= 0; level--) {

  error = xfs_btree_lookup_get_block(cur, level, &lptr, &block);
  if (error)
   return error;


  if (level > 0) {
   union xfs_btree_ptr *ptr;

   ptr = xfs_btree_ptr_addr(cur, 1, block);
   xfs_btree_readahead_ptr(cur, ptr, 1);


   xfs_btree_copy_ptrs(cur, &lptr, ptr, 1);
  }


  do {
   error = xfs_btree_visit_block(cur, level, fn, data);
  } while (!error);

  if (error != -ENOENT)
   return error;
 }

 return 0;
}
