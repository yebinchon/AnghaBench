
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ blk; int member_2; int member_1; int member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; struct inode* inode; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ f2fs_lookup_extent_cache (struct inode*,scalar_t__,struct extent_info*) ;
 int f2fs_reserve_block (struct dnode_of_data*,scalar_t__) ;

int f2fs_get_block(struct dnode_of_data *dn, pgoff_t index)
{
 struct extent_info ei = {0,0,0};
 struct inode *inode = dn->inode;

 if (f2fs_lookup_extent_cache(inode, index, &ei)) {
  dn->data_blkaddr = ei.blk + index - ei.fofs;
  return 0;
 }

 return f2fs_reserve_block(dn, index);
}
