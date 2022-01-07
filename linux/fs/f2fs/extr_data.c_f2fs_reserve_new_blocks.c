
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int node_page; int data_blkaddr; int ofs_in_node; int inode; int nid; } ;
typedef scalar_t__ block_t ;
typedef int blkcnt_t ;


 int EPERM ;
 struct f2fs_sb_info* F2FS_I_SB (int ) ;
 int FI_NO_ALLOC ;
 int NEW_ADDR ;
 int NODE ;
 scalar_t__ NULL_ADDR ;
 int __set_data_blkaddr (struct dnode_of_data*) ;
 scalar_t__ datablock_addr (int ,int ,int ) ;
 int f2fs_wait_on_page_writeback (int ,int ,int,int) ;
 int inc_valid_block_count (struct f2fs_sb_info*,int ,int *) ;
 int is_inode_flag_set (int ,int ) ;
 scalar_t__ set_page_dirty (int ) ;
 int trace_f2fs_reserve_new_blocks (int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

int f2fs_reserve_new_blocks(struct dnode_of_data *dn, blkcnt_t count)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 int err;

 if (!count)
  return 0;

 if (unlikely(is_inode_flag_set(dn->inode, FI_NO_ALLOC)))
  return -EPERM;
 if (unlikely((err = inc_valid_block_count(sbi, dn->inode, &count))))
  return err;

 trace_f2fs_reserve_new_blocks(dn->inode, dn->nid,
      dn->ofs_in_node, count);

 f2fs_wait_on_page_writeback(dn->node_page, NODE, 1, 1);

 for (; count > 0; dn->ofs_in_node++) {
  block_t blkaddr = datablock_addr(dn->inode,
     dn->node_page, dn->ofs_in_node);
  if (blkaddr == NULL_ADDR) {
   dn->data_blkaddr = NEW_ADDR;
   __set_data_blkaddr(dn);
   count--;
  }
 }

 if (set_page_dirty(dn->node_page))
  dn->node_changed = 1;
 return 0;
}
