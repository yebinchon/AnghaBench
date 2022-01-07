
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {scalar_t__ max_file_blocks; } ;
struct dnode_of_data {int node_page; scalar_t__ ofs_in_node; } ;
typedef scalar_t__ pgoff_t ;


 int ADDRS_PER_PAGE (int ,struct inode*) ;
 int ENOENT ;
 scalar_t__ F2FS_BLK_ALIGN (int ) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ IS_INODE (int ) ;
 int LOOKUP_NODE_RA ;
 int PTR_ERR (struct page*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int) ;
 int f2fs_truncate_inline_inode (struct inode*,struct page*,int ) ;
 int f2fs_truncate_inode_blocks (struct inode*,scalar_t__) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,struct page*,int *,int ) ;
 int trace_f2fs_truncate_blocks_enter (struct inode*,int ) ;
 int trace_f2fs_truncate_blocks_exit (struct inode*,int) ;
 int truncate_partial_data_page (struct inode*,int ,int) ;

int f2fs_truncate_blocks(struct inode *inode, u64 from, bool lock)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct dnode_of_data dn;
 pgoff_t free_from;
 int count = 0, err = 0;
 struct page *ipage;
 bool truncate_page = 0;

 trace_f2fs_truncate_blocks_enter(inode, from);

 free_from = (pgoff_t)F2FS_BLK_ALIGN(from);

 if (free_from >= sbi->max_file_blocks)
  goto free_partial;

 if (lock)
  f2fs_lock_op(sbi);

 ipage = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(ipage)) {
  err = PTR_ERR(ipage);
  goto out;
 }

 if (f2fs_has_inline_data(inode)) {
  f2fs_truncate_inline_inode(inode, ipage, from);
  f2fs_put_page(ipage, 1);
  truncate_page = 1;
  goto out;
 }

 set_new_dnode(&dn, inode, ipage, ((void*)0), 0);
 err = f2fs_get_dnode_of_data(&dn, free_from, LOOKUP_NODE_RA);
 if (err) {
  if (err == -ENOENT)
   goto free_next;
  goto out;
 }

 count = ADDRS_PER_PAGE(dn.node_page, inode);

 count -= dn.ofs_in_node;
 f2fs_bug_on(sbi, count < 0);

 if (dn.ofs_in_node || IS_INODE(dn.node_page)) {
  f2fs_truncate_data_blocks_range(&dn, count);
  free_from += count;
 }

 f2fs_put_dnode(&dn);
free_next:
 err = f2fs_truncate_inode_blocks(inode, free_from);
out:
 if (lock)
  f2fs_unlock_op(sbi);
free_partial:

 if (!err)
  err = truncate_partial_data_page(inode, from, truncate_page);

 trace_f2fs_truncate_blocks_exit(inode, err);
 return err;
}
