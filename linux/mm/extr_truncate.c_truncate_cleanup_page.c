
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int ClearPageMappedToDisk (struct page*) ;
 int HPAGE_PMD_NR ;
 int PAGE_SIZE ;
 scalar_t__ PageTransHuge (struct page*) ;
 int cancel_dirty_page (struct page*) ;
 int do_invalidatepage (struct page*,int ,int ) ;
 scalar_t__ page_has_private (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int unmap_mapping_pages (struct address_space*,int ,int,int) ;

__attribute__((used)) static void
truncate_cleanup_page(struct address_space *mapping, struct page *page)
{
 if (page_mapped(page)) {
  pgoff_t nr = PageTransHuge(page) ? HPAGE_PMD_NR : 1;
  unmap_mapping_pages(mapping, page->index, nr, 0);
 }

 if (page_has_private(page))
  do_invalidatepage(page, 0, PAGE_SIZE);






 cancel_dirty_page(page);
 ClearPageMappedToDisk(page);
}
