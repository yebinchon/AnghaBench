
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* set_page_dirty ) (struct page*) ;} ;


 int ClearPageReclaim (struct page*) ;
 int PageDirty (struct page*) ;
 scalar_t__ PageReclaim (struct page*) ;
 int TestSetPageDirty (struct page*) ;
 int __set_page_dirty_buffers (struct page*) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ likely (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 int stub1 (struct page*) ;

int set_page_dirty(struct page *page)
{
 struct address_space *mapping = page_mapping(page);

 page = compound_head(page);
 if (likely(mapping)) {
  int (*spd)(struct page *) = mapping->a_ops->set_page_dirty;
  if (PageReclaim(page))
   ClearPageReclaim(page);




  return (*spd)(page);
 }
 if (!PageDirty(page)) {
  if (!TestSetPageDirty(page))
   return 1;
 }
 return 0;
}
