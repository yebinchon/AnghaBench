
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PageUptodate (struct page*) ;
 struct page* f2fs_get_read_data_page (struct inode*,int ,int ,int) ;
 int f2fs_put_page (struct page*,int) ;
 int lock_page (struct page*) ;
 scalar_t__ unlikely (int) ;

struct page *f2fs_get_lock_data_page(struct inode *inode, pgoff_t index,
       bool for_write)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
repeat:
 page = f2fs_get_read_data_page(inode, index, 0, for_write);
 if (IS_ERR(page))
  return page;


 lock_page(page);
 if (unlikely(page->mapping != mapping)) {
  f2fs_put_page(page, 1);
  goto repeat;
 }
 if (unlikely(!PageUptodate(page))) {
  f2fs_put_page(page, 1);
  return ERR_PTR(-EIO);
 }
 return page;
}
