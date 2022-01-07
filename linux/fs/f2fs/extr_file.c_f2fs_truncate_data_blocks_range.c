
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_node {int dummy; } ;
struct dnode_of_data {int ofs_in_node; int nid; int inode; int node_page; scalar_t__ data_blkaddr; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ block_t ;
typedef int __le32 ;


 int DATA_GENERIC_ENHANCE ;
 struct f2fs_sb_info* F2FS_I_SB (int ) ;
 struct f2fs_node* F2FS_NODE (int ) ;
 int FI_FIRST_BLOCK_WRITTEN ;
 scalar_t__ IS_INODE (int ) ;
 scalar_t__ NULL_ADDR ;
 int REQ_TIME ;
 scalar_t__ __is_valid_data_blkaddr (scalar_t__) ;
 int * blkaddr_in_node (struct f2fs_node*) ;
 int clear_inode_flag (int ,int ) ;
 int dec_valid_block_count (struct f2fs_sb_info*,int ,int) ;
 scalar_t__ f2fs_has_extra_attr (int ) ;
 int f2fs_invalidate_blocks (struct f2fs_sb_info*,scalar_t__) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,scalar_t__,int ) ;
 int f2fs_set_data_blkaddr (struct dnode_of_data*) ;
 scalar_t__ f2fs_start_bidx_of_node (int ,int ) ;
 int f2fs_update_extent_cache_range (struct dnode_of_data*,scalar_t__,int ,int) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int get_extra_isize (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int ofs_of_node (int ) ;
 int trace_f2fs_truncate_data_blocks_range (int ,int ,int,int) ;

void f2fs_truncate_data_blocks_range(struct dnode_of_data *dn, int count)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 struct f2fs_node *raw_node;
 int nr_free = 0, ofs = dn->ofs_in_node, len = count;
 __le32 *addr;
 int base = 0;

 if (IS_INODE(dn->node_page) && f2fs_has_extra_attr(dn->inode))
  base = get_extra_isize(dn->inode);

 raw_node = F2FS_NODE(dn->node_page);
 addr = blkaddr_in_node(raw_node) + base + ofs;

 for (; count > 0; count--, addr++, dn->ofs_in_node++) {
  block_t blkaddr = le32_to_cpu(*addr);

  if (blkaddr == NULL_ADDR)
   continue;

  dn->data_blkaddr = NULL_ADDR;
  f2fs_set_data_blkaddr(dn);

  if (__is_valid_data_blkaddr(blkaddr) &&
   !f2fs_is_valid_blkaddr(sbi, blkaddr,
     DATA_GENERIC_ENHANCE))
   continue;

  f2fs_invalidate_blocks(sbi, blkaddr);
  if (dn->ofs_in_node == 0 && IS_INODE(dn->node_page))
   clear_inode_flag(dn->inode, FI_FIRST_BLOCK_WRITTEN);
  nr_free++;
 }

 if (nr_free) {
  pgoff_t fofs;




  fofs = f2fs_start_bidx_of_node(ofs_of_node(dn->node_page),
       dn->inode) + ofs;
  f2fs_update_extent_cache_range(dn, fofs, 0, len);
  dec_valid_block_count(sbi, dn->inode, nr_free);
 }
 dn->ofs_in_node = ofs;

 f2fs_update_time(sbi, REQ_TIME);
 trace_f2fs_truncate_data_blocks_range(dn->inode, dn->nid,
      dn->ofs_in_node, nr_free);
}
