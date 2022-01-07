
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int dummy; } ;


 int move_freepages (struct zone*,struct page*,struct page*,int,int*) ;
 unsigned long page_to_pfn (struct page*) ;
 int pageblock_nr_pages ;
 struct page* pfn_to_page (unsigned long) ;
 int zone_spans_pfn (struct zone*,unsigned long) ;

int move_freepages_block(struct zone *zone, struct page *page,
    int migratetype, int *num_movable)
{
 unsigned long start_pfn, end_pfn;
 struct page *start_page, *end_page;

 if (num_movable)
  *num_movable = 0;

 start_pfn = page_to_pfn(page);
 start_pfn = start_pfn & ~(pageblock_nr_pages-1);
 start_page = pfn_to_page(start_pfn);
 end_page = start_page + pageblock_nr_pages - 1;
 end_pfn = start_pfn + pageblock_nr_pages - 1;


 if (!zone_spans_pfn(zone, start_pfn))
  start_page = page;
 if (!zone_spans_pfn(zone, end_pfn))
  return 0;

 return move_freepages(zone, start_page, end_page, migratetype,
        num_movable);
}
