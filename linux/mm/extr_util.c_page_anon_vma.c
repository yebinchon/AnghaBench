
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct anon_vma {int dummy; } ;


 unsigned long PAGE_MAPPING_ANON ;
 unsigned long PAGE_MAPPING_FLAGS ;
 struct anon_vma* __page_rmapping (struct page*) ;
 struct page* compound_head (struct page*) ;

struct anon_vma *page_anon_vma(struct page *page)
{
 unsigned long mapping;

 page = compound_head(page);
 mapping = (unsigned long)page->mapping;
 if ((mapping & PAGE_MAPPING_FLAGS) != PAGE_MAPPING_ANON)
  return ((void*)0);
 return __page_rmapping(page);
}
