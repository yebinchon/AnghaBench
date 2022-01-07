
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_cur {int dummy; } ;
struct xfs_bitmap {int dummy; } ;


 int xfs_bitmap_collect_btblock ;
 int xfs_btree_visit_blocks (struct xfs_btree_cur*,int ,struct xfs_bitmap*) ;

int
xfs_bitmap_set_btblocks(
 struct xfs_bitmap *bitmap,
 struct xfs_btree_cur *cur)
{
 return xfs_btree_visit_blocks(cur, xfs_bitmap_collect_btblock, bitmap);
}
