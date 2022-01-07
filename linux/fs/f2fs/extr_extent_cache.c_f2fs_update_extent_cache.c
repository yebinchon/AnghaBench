
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {scalar_t__ data_blkaddr; int inode; scalar_t__ ofs_in_node; int node_page; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ block_t ;


 scalar_t__ NEW_ADDR ;
 scalar_t__ NULL_ADDR ;
 int f2fs_may_extent_tree (int ) ;
 scalar_t__ f2fs_start_bidx_of_node (int ,int ) ;
 int f2fs_update_extent_tree_range (int ,scalar_t__,scalar_t__,int) ;
 int ofs_of_node (int ) ;

void f2fs_update_extent_cache(struct dnode_of_data *dn)
{
 pgoff_t fofs;
 block_t blkaddr;

 if (!f2fs_may_extent_tree(dn->inode))
  return;

 if (dn->data_blkaddr == NEW_ADDR)
  blkaddr = NULL_ADDR;
 else
  blkaddr = dn->data_blkaddr;

 fofs = f2fs_start_bidx_of_node(ofs_of_node(dn->node_page), dn->inode) +
        dn->ofs_in_node;
 f2fs_update_extent_tree_range(dn->inode, fofs, blkaddr, 1);
}
