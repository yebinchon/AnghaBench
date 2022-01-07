
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xfs_btree_cur {int dummy; } ;
struct xfs_btree_block_change_owner_info {struct list_head* buffer_list; int new_owner; } ;
struct list_head {int dummy; } ;


 int xfs_btree_block_change_owner ;
 int xfs_btree_visit_blocks (struct xfs_btree_cur*,int ,struct xfs_btree_block_change_owner_info*) ;

int
xfs_btree_change_owner(
 struct xfs_btree_cur *cur,
 uint64_t new_owner,
 struct list_head *buffer_list)
{
 struct xfs_btree_block_change_owner_info bbcoi;

 bbcoi.new_owner = new_owner;
 bbcoi.buffer_list = buffer_list;

 return xfs_btree_visit_blocks(cur, xfs_btree_block_change_owner,
   &bbcoi);
}
