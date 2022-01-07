
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PageUptodate (struct page*) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int,int *) ;

__attribute__((used)) static struct page *
__iomap_read_page(struct inode *inode, loff_t offset)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;

 page = read_mapping_page(mapping, offset >> PAGE_SHIFT, ((void*)0));
 if (IS_ERR(page))
  return page;
 if (!PageUptodate(page)) {
  put_page(page);
  return ERR_PTR(-EIO);
 }
 return page;
}
