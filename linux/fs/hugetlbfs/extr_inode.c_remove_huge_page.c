
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageDirty (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int delete_from_page_cache (struct page*) ;

__attribute__((used)) static void remove_huge_page(struct page *page)
{
 ClearPageDirty(page);
 ClearPageUptodate(page);
 delete_from_page_cache(page);
}
