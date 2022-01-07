
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int page_cache_delete (struct address_space*,struct page*,void*) ;
 int trace_mm_filemap_delete_from_page_cache (struct page*) ;
 int unaccount_page_cache_page (struct address_space*,struct page*) ;

void __delete_from_page_cache(struct page *page, void *shadow)
{
 struct address_space *mapping = page->mapping;

 trace_mm_filemap_delete_from_page_cache(page);

 unaccount_page_cache_page(mapping, page);
 page_cache_delete(mapping, page, shadow);
}
