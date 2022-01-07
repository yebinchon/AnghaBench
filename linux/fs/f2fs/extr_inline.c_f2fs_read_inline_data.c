
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct inode {int i_ino; } ;


 int EAGAIN ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int f2fs_do_read_inline_data (struct page*,struct page*) ;
 struct page* f2fs_get_node_page (int ,int ) ;
 int f2fs_has_inline_data (struct inode*) ;
 int f2fs_put_page (struct page*,int) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,int ,int ) ;

int f2fs_read_inline_data(struct inode *inode, struct page *page)
{
 struct page *ipage;

 ipage = f2fs_get_node_page(F2FS_I_SB(inode), inode->i_ino);
 if (IS_ERR(ipage)) {
  unlock_page(page);
  return PTR_ERR(ipage);
 }

 if (!f2fs_has_inline_data(inode)) {
  f2fs_put_page(ipage, 1);
  return -EAGAIN;
 }

 if (page->index)
  zero_user_segment(page, 0, PAGE_SIZE);
 else
  f2fs_do_read_inline_data(page, ipage);

 if (!PageUptodate(page))
  SetPageUptodate(page);
 f2fs_put_page(ipage, 1);
 unlock_page(page);
 return 0;
}
