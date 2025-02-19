
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seg_entry {int cur_valid_map; } ;
struct page {scalar_t__ i_ino; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_summary_block {struct f2fs_summary* entries; } ;
struct f2fs_summary {int ofs_in_node; int nid; } ;
struct f2fs_sb_info {int sb; } ;
struct dnode_of_data {scalar_t__ nid; scalar_t__ data_blkaddr; int inode_page; scalar_t__ inode_page_locked; struct page* inode; scalar_t__ ofs_in_node; int node_page; } ;
struct curseg_info {unsigned int segno; TYPE_1__* sum_blk; } ;
typedef scalar_t__ nid_t ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {struct f2fs_summary* entries; } ;


 int CURSEG_COLD_DATA ;
 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 unsigned short GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,scalar_t__) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,scalar_t__) ;
 scalar_t__ IS_ERR (struct page*) ;
 int LOOKUP_NODE ;
 int PTR_ERR (struct page*) ;
 scalar_t__ datablock_addr (struct page*,int ,scalar_t__) ;
 int dquot_initialize (struct page*) ;
 scalar_t__ f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,scalar_t__) ;
 struct page* f2fs_get_sum_page (struct f2fs_sb_info*,unsigned int) ;
 struct page* f2fs_iget_retry (int ,scalar_t__) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 scalar_t__ f2fs_start_bidx_of_node (unsigned int,struct page*) ;
 int f2fs_test_bit (unsigned short,int ) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 scalar_t__ ino_of_node (struct page*) ;
 int iput (struct page*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lock_page (int ) ;
 unsigned int ofs_of_node (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 int set_new_dnode (struct dnode_of_data*,struct page*,int *,int *,int ) ;
 int unlock_page (int ) ;

__attribute__((used)) static int check_index_in_prev_nodes(struct f2fs_sb_info *sbi,
   block_t blkaddr, struct dnode_of_data *dn)
{
 struct seg_entry *sentry;
 unsigned int segno = GET_SEGNO(sbi, blkaddr);
 unsigned short blkoff = GET_BLKOFF_FROM_SEG0(sbi, blkaddr);
 struct f2fs_summary_block *sum_node;
 struct f2fs_summary sum;
 struct page *sum_page, *node_page;
 struct dnode_of_data tdn = *dn;
 nid_t ino, nid;
 struct inode *inode;
 unsigned int offset;
 block_t bidx;
 int i;

 sentry = get_seg_entry(sbi, segno);
 if (!f2fs_test_bit(blkoff, sentry->cur_valid_map))
  return 0;


 for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
  struct curseg_info *curseg = CURSEG_I(sbi, i);
  if (curseg->segno == segno) {
   sum = curseg->sum_blk->entries[blkoff];
   goto got_it;
  }
 }

 sum_page = f2fs_get_sum_page(sbi, segno);
 if (IS_ERR(sum_page))
  return PTR_ERR(sum_page);
 sum_node = (struct f2fs_summary_block *)page_address(sum_page);
 sum = sum_node->entries[blkoff];
 f2fs_put_page(sum_page, 1);
got_it:

 nid = le32_to_cpu(sum.nid);
 if (dn->inode->i_ino == nid) {
  tdn.nid = nid;
  if (!dn->inode_page_locked)
   lock_page(dn->inode_page);
  tdn.node_page = dn->inode_page;
  tdn.ofs_in_node = le16_to_cpu(sum.ofs_in_node);
  goto truncate_out;
 } else if (dn->nid == nid) {
  tdn.ofs_in_node = le16_to_cpu(sum.ofs_in_node);
  goto truncate_out;
 }


 node_page = f2fs_get_node_page(sbi, nid);
 if (IS_ERR(node_page))
  return PTR_ERR(node_page);

 offset = ofs_of_node(node_page);
 ino = ino_of_node(node_page);
 f2fs_put_page(node_page, 1);

 if (ino != dn->inode->i_ino) {
  int ret;


  inode = f2fs_iget_retry(sbi->sb, ino);
  if (IS_ERR(inode))
   return PTR_ERR(inode);

  ret = dquot_initialize(inode);
  if (ret) {
   iput(inode);
   return ret;
  }
 } else {
  inode = dn->inode;
 }

 bidx = f2fs_start_bidx_of_node(offset, inode) +
    le16_to_cpu(sum.ofs_in_node);





 if (ino == dn->inode->i_ino && dn->inode_page_locked)
  unlock_page(dn->inode_page);

 set_new_dnode(&tdn, inode, ((void*)0), ((void*)0), 0);
 if (f2fs_get_dnode_of_data(&tdn, bidx, LOOKUP_NODE))
  goto out;

 if (tdn.data_blkaddr == blkaddr)
  f2fs_truncate_data_blocks_range(&tdn, 1);

 f2fs_put_dnode(&tdn);
out:
 if (ino != dn->inode->i_ino)
  iput(inode);
 else if (dn->inode_page_locked)
  lock_page(dn->inode_page);
 return 0;

truncate_out:
 if (datablock_addr(tdn.inode, tdn.node_page,
     tdn.ofs_in_node) == blkaddr)
  f2fs_truncate_data_blocks_range(&tdn, 1);
 if (dn->inode->i_ino == nid && !dn->inode_page_locked)
  unlock_page(dn->inode_page);
 return 0;
}
