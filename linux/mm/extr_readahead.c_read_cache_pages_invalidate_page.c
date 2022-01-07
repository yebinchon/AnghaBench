
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int BUG () ;
 int PAGE_SIZE ;
 int do_invalidatepage (struct page*,int ,int ) ;
 scalar_t__ page_has_private (struct page*) ;
 int put_page (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void read_cache_pages_invalidate_page(struct address_space *mapping,
          struct page *page)
{
 if (page_has_private(page)) {
  if (!trylock_page(page))
   BUG();
  page->mapping = mapping;
  do_invalidatepage(page, 0, PAGE_SIZE);
  page->mapping = ((void*)0);
  unlock_page(page);
 }
 put_page(page);
}
