
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {void* mapping; } ;
typedef void address_space ;


 unsigned long PAGE_MAPPING_ANON ;
 unsigned long PAGE_MAPPING_FLAGS ;
 int PageSlab (struct page*) ;
 int PageSwapCache (struct page*) ;
 struct page* compound_head (struct page*) ;
 int page_private (struct page*) ;
 void* swap_address_space (TYPE_1__) ;
 scalar_t__ unlikely (int ) ;

struct address_space *page_mapping(struct page *page)
{
 struct address_space *mapping;

 page = compound_head(page);


 if (unlikely(PageSlab(page)))
  return ((void*)0);

 if (unlikely(PageSwapCache(page))) {
  swp_entry_t entry;

  entry.val = page_private(page);
  return swap_address_space(entry);
 }

 mapping = page->mapping;
 if ((unsigned long)mapping & PAGE_MAPPING_ANON)
  return ((void*)0);

 return (void *)((unsigned long)mapping & ~PAGE_MAPPING_FLAGS);
}
