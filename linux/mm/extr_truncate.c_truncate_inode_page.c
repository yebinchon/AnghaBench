
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int EIO ;
 int PageTail (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int delete_from_page_cache (struct page*) ;
 int truncate_cleanup_page (struct address_space*,struct page*) ;

int truncate_inode_page(struct address_space *mapping, struct page *page)
{
 VM_BUG_ON_PAGE(PageTail(page), page);

 if (page->mapping != mapping)
  return -EIO;

 truncate_cleanup_page(mapping, page);
 delete_from_page_cache(page);
 return 0;
}
