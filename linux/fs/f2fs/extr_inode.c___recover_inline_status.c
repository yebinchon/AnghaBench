
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef int __le32 ;


 int F2FS_INODE (struct page*) ;
 int FI_DATA_EXIST ;
 int MAX_INLINE_DATA (struct inode*) ;
 int NODE ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_page_dirty (struct page*) ;
 int set_raw_inline (struct inode*,int ) ;

__attribute__((used)) static void __recover_inline_status(struct inode *inode, struct page *ipage)
{
 void *inline_data = inline_data_addr(inode, ipage);
 __le32 *start = inline_data;
 __le32 *end = start + MAX_INLINE_DATA(inode) / sizeof(__le32);

 while (start < end) {
  if (*start++) {
   f2fs_wait_on_page_writeback(ipage, NODE, 1, 1);

   set_inode_flag(inode, FI_DATA_EXIST);
   set_raw_inline(inode, F2FS_INODE(ipage));
   set_page_dirty(ipage);
   return;
  }
 }
 return;
}
