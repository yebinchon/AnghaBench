
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int invalidate_complete_page (struct address_space*,struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 struct address_space* page_mapping (struct page*) ;

int invalidate_inode_page(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 if (!mapping)
  return 0;
 if (PageDirty(page) || PageWriteback(page))
  return 0;
 if (page_mapped(page))
  return 0;
 return invalidate_complete_page(mapping, page);
}
