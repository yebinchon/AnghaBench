
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_size; } ;
struct hfsplus_inode_info {int phys_size; int alloc_blocks; int fs_blocks; } ;
struct hfs_btree {int free_nodes; int node_size_shift; int node_count; int sb; struct inode* inode; } ;
typedef int loff_t ;
struct TYPE_2__ {int alloc_blksz_shift; int fs_shift; } ;


 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 TYPE_1__* HFSPLUS_SB (int ) ;
 int hfs_bnode_need_zeroout (struct hfs_btree*) ;
 int hfsplus_file_extend (struct inode*,int ) ;
 int inode_set_bytes (struct inode*,int) ;

int hfs_bmap_reserve(struct hfs_btree *tree, int rsvd_nodes)
{
 struct inode *inode = tree->inode;
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);
 u32 count;
 int res;

 if (rsvd_nodes <= 0)
  return 0;

 while (tree->free_nodes < rsvd_nodes) {
  res = hfsplus_file_extend(inode, hfs_bnode_need_zeroout(tree));
  if (res)
   return res;
  hip->phys_size = inode->i_size =
   (loff_t)hip->alloc_blocks <<
    HFSPLUS_SB(tree->sb)->alloc_blksz_shift;
  hip->fs_blocks =
   hip->alloc_blocks << HFSPLUS_SB(tree->sb)->fs_shift;
  inode_set_bytes(inode, inode->i_size);
  count = inode->i_size >> tree->node_size_shift;
  tree->free_nodes += count - tree->node_count;
  tree->node_count = count;
 }
 return 0;
}
