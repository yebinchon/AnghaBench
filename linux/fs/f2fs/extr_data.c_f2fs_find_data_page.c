
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 struct page* f2fs_get_read_data_page (struct inode*,int ,int ,int) ;
 int f2fs_put_page (struct page*,int ) ;
 struct page* find_get_page (struct address_space*,int ) ;
 scalar_t__ unlikely (int) ;
 int wait_on_page_locked (struct page*) ;

struct page *f2fs_find_data_page(struct inode *inode, pgoff_t index)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;

 page = find_get_page(mapping, index);
 if (page && PageUptodate(page))
  return page;
 f2fs_put_page(page, 0);

 page = f2fs_get_read_data_page(inode, index, 0, 0);
 if (IS_ERR(page))
  return page;

 if (PageUptodate(page))
  return page;

 wait_on_page_locked(page);
 if (unlikely(!PageUptodate(page))) {
  f2fs_put_page(page, 0);
  return ERR_PTR(-EIO);
 }
 return page;
}
