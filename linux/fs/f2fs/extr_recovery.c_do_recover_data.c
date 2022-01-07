
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_info {scalar_t__ ino; int version; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {struct page* node_page; int nid; int ofs_in_node; int inode; } ;
typedef int loff_t ;
typedef scalar_t__ block_t ;


 unsigned int ADDRS_PER_PAGE (struct page*,struct inode*) ;
 int ALLOC_NODE ;
 int BLK_RW_ASYNC ;
 int CONFIG_F2FS_FAULT_INJECTION ;
 int EFSCORRUPTED ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_INODE (struct page*) ;
 int META_POR ;
 scalar_t__ NEW_ADDR ;
 int NODE ;
 scalar_t__ NULL_ADDR ;
 int PAGE_SHIFT ;
 scalar_t__ __is_valid_data_blkaddr (scalar_t__) ;
 int check_index_in_prev_nodes (struct f2fs_sb_info*,scalar_t__,struct dnode_of_data*) ;
 int congestion_wait (int ,int) ;
 int copy_node_footer (struct page*,struct page*) ;
 scalar_t__ datablock_addr (int ,struct page*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,unsigned int,int ) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 scalar_t__ f2fs_has_xattr_block (scalar_t__) ;
 int f2fs_i_size_write (struct inode*,int) ;
 scalar_t__ f2fs_is_valid_blkaddr (struct f2fs_sb_info*,scalar_t__,int ) ;
 int f2fs_notice (struct f2fs_sb_info*,char*,int ,char*,int,int) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 scalar_t__ f2fs_recover_inline_data (struct inode*,struct page*) ;
 int f2fs_recover_inline_xattr (struct inode*,struct page*) ;
 int f2fs_recover_xattr_data (struct inode*,struct page*) ;
 int f2fs_replace_block (struct f2fs_sb_info*,struct dnode_of_data*,scalar_t__,scalar_t__,int ,int,int) ;
 int f2fs_reserve_new_block (struct dnode_of_data*) ;
 unsigned int f2fs_start_bidx_of_node (scalar_t__,struct inode*) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ file_keep_isize (struct inode*) ;
 int fill_node_footer (struct page*,int ,scalar_t__,scalar_t__,int) ;
 int i_size_read (struct inode*) ;
 scalar_t__ ino_of_node (struct page*) ;
 scalar_t__ ofs_of_node (struct page*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static int do_recover_data(struct f2fs_sb_info *sbi, struct inode *inode,
     struct page *page)
{
 struct dnode_of_data dn;
 struct node_info ni;
 unsigned int start, end;
 int err = 0, recovered = 0;


 if (IS_INODE(page)) {
  f2fs_recover_inline_xattr(inode, page);
 } else if (f2fs_has_xattr_block(ofs_of_node(page))) {
  err = f2fs_recover_xattr_data(inode, page);
  if (!err)
   recovered++;
  goto out;
 }


 if (f2fs_recover_inline_data(inode, page))
  goto out;


 start = f2fs_start_bidx_of_node(ofs_of_node(page), inode);
 end = start + ADDRS_PER_PAGE(page, inode);

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
retry_dn:
 err = f2fs_get_dnode_of_data(&dn, start, ALLOC_NODE);
 if (err) {
  if (err == -ENOMEM) {
   congestion_wait(BLK_RW_ASYNC, HZ/50);
   goto retry_dn;
  }
  goto out;
 }

 f2fs_wait_on_page_writeback(dn.node_page, NODE, 1, 1);

 err = f2fs_get_node_info(sbi, dn.nid, &ni);
 if (err)
  goto err;

 f2fs_bug_on(sbi, ni.ino != ino_of_node(page));

 if (ofs_of_node(dn.node_page) != ofs_of_node(page)) {
  f2fs_warn(sbi, "Inconsistent ofs_of_node, ino:%lu, ofs:%u, %u",
     inode->i_ino, ofs_of_node(dn.node_page),
     ofs_of_node(page));
  err = -EFSCORRUPTED;
  goto err;
 }

 for (; start < end; start++, dn.ofs_in_node++) {
  block_t src, dest;

  src = datablock_addr(dn.inode, dn.node_page, dn.ofs_in_node);
  dest = datablock_addr(dn.inode, page, dn.ofs_in_node);

  if (__is_valid_data_blkaddr(src) &&
   !f2fs_is_valid_blkaddr(sbi, src, META_POR)) {
   err = -EFSCORRUPTED;
   goto err;
  }

  if (__is_valid_data_blkaddr(dest) &&
   !f2fs_is_valid_blkaddr(sbi, dest, META_POR)) {
   err = -EFSCORRUPTED;
   goto err;
  }


  if (src == dest)
   continue;


  if (dest == NULL_ADDR) {
   f2fs_truncate_data_blocks_range(&dn, 1);
   continue;
  }

  if (!file_keep_isize(inode) &&
   (i_size_read(inode) <= ((loff_t)start << PAGE_SHIFT)))
   f2fs_i_size_write(inode,
    (loff_t)(start + 1) << PAGE_SHIFT);





  if (dest == NEW_ADDR) {
   f2fs_truncate_data_blocks_range(&dn, 1);
   f2fs_reserve_new_block(&dn);
   continue;
  }


  if (f2fs_is_valid_blkaddr(sbi, dest, META_POR)) {

   if (src == NULL_ADDR) {
    err = f2fs_reserve_new_block(&dn);
    while (err &&
           IS_ENABLED(CONFIG_F2FS_FAULT_INJECTION))
     err = f2fs_reserve_new_block(&dn);

    f2fs_bug_on(sbi, err);
    if (err)
     goto err;
   }
retry_prev:

   err = check_index_in_prev_nodes(sbi, dest, &dn);
   if (err) {
    if (err == -ENOMEM) {
     congestion_wait(BLK_RW_ASYNC, HZ/50);
     goto retry_prev;
    }
    goto err;
   }


   f2fs_replace_block(sbi, &dn, src, dest,
      ni.version, 0, 0);
   recovered++;
  }
 }

 copy_node_footer(dn.node_page, page);
 fill_node_footer(dn.node_page, dn.nid, ni.ino,
     ofs_of_node(page), 0);
 set_page_dirty(dn.node_page);
err:
 f2fs_put_dnode(&dn);
out:
 f2fs_notice(sbi, "recover_data: ino = %lx (i_size: %s) recovered = %d, err = %d",
      inode->i_ino, file_keep_isize(inode) ? "keep" : "recover",
      recovered, err);
 return err;
}
