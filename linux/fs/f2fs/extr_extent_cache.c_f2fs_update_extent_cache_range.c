
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int inode; } ;
typedef int pgoff_t ;
typedef int block_t ;


 int f2fs_may_extent_tree (int ) ;
 int f2fs_update_extent_tree_range (int ,int ,int ,unsigned int) ;

void f2fs_update_extent_cache_range(struct dnode_of_data *dn,
    pgoff_t fofs, block_t blkaddr, unsigned int len)

{
 if (!f2fs_may_extent_tree(dn->inode))
  return;

 f2fs_update_extent_tree_range(dn->inode, fofs, blkaddr, len);
}
