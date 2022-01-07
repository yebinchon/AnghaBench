
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; int * mapping; int index; } ;


 int PAGE_FLAGS_CHECK_AT_PREP ;
 int PG_active ;
 int PG_locked ;
 int PG_lru ;
 int PG_reclaim ;
 int PG_referenced ;
 int PG_uptodate ;
 int page_count (struct page*) ;
 scalar_t__ page_mapcount (struct page*) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int fuse_check_page(struct page *page)
{
 if (page_mapcount(page) ||
     page->mapping != ((void*)0) ||
     page_count(page) != 1 ||
     (page->flags & PAGE_FLAGS_CHECK_AT_PREP &
      ~(1 << PG_locked |
        1 << PG_referenced |
        1 << PG_uptodate |
        1 << PG_lru |
        1 << PG_active |
        1 << PG_reclaim))) {
  pr_warn("trying to steal weird page\n");
  pr_warn("  page=%p index=%li flags=%08lx, count=%i, mapcount=%i, mapping=%p\n", page, page->index, page->flags, page_count(page), page_mapcount(page), page->mapping);
  return 1;
 }
 return 0;
}
