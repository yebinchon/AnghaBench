
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inline; } ;


 int F2FS_INLINE_DATA ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_DATA_EXIST ;
 int FI_INLINE_DATA ;
 int IS_ERR (struct page*) ;
 scalar_t__ IS_INODE (struct page*) ;
 int MAX_INLINE_DATA (struct inode*) ;
 int NODE ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_put_page (struct page*,int) ;
 scalar_t__ f2fs_truncate_blocks (struct inode*,int ,int) ;
 int f2fs_truncate_inline_inode (struct inode*,struct page*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 int memcpy (void*,void*,int ) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_page_dirty (struct page*) ;

bool f2fs_recover_inline_data(struct inode *inode, struct page *npage)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct f2fs_inode *ri = ((void*)0);
 void *src_addr, *dst_addr;
 struct page *ipage;
 if (IS_INODE(npage))
  ri = F2FS_INODE(npage);

 if (f2fs_has_inline_data(inode) &&
   ri && (ri->i_inline & F2FS_INLINE_DATA)) {
process_inline:
  ipage = f2fs_get_node_page(sbi, inode->i_ino);
  f2fs_bug_on(sbi, IS_ERR(ipage));

  f2fs_wait_on_page_writeback(ipage, NODE, 1, 1);

  src_addr = inline_data_addr(inode, npage);
  dst_addr = inline_data_addr(inode, ipage);
  memcpy(dst_addr, src_addr, MAX_INLINE_DATA(inode));

  set_inode_flag(inode, FI_INLINE_DATA);
  set_inode_flag(inode, FI_DATA_EXIST);

  set_page_dirty(ipage);
  f2fs_put_page(ipage, 1);
  return 1;
 }

 if (f2fs_has_inline_data(inode)) {
  ipage = f2fs_get_node_page(sbi, inode->i_ino);
  f2fs_bug_on(sbi, IS_ERR(ipage));
  f2fs_truncate_inline_inode(inode, ipage, 0);
  clear_inode_flag(inode, FI_INLINE_DATA);
  f2fs_put_page(ipage, 1);
 } else if (ri && (ri->i_inline & F2FS_INLINE_DATA)) {
  if (f2fs_truncate_blocks(inode, 0, 0))
   return 0;
  goto process_inline;
 }
 return 0;
}
