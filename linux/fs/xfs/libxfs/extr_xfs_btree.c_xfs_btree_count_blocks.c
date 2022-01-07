
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
struct xfs_btree_cur {int dummy; } ;


 int xfs_btree_count_blocks_helper ;
 int xfs_btree_visit_blocks (struct xfs_btree_cur*,int ,scalar_t__*) ;

int
xfs_btree_count_blocks(
 struct xfs_btree_cur *cur,
 xfs_extlen_t *blocks)
{
 *blocks = 0;
 return xfs_btree_visit_blocks(cur, xfs_btree_count_blocks_helper,
   blocks);
}
