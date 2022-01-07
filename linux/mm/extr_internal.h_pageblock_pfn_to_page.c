
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {scalar_t__ contiguous; } ;
struct page {int dummy; } ;


 struct page* __pageblock_pfn_to_page (unsigned long,unsigned long,struct zone*) ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static inline struct page *pageblock_pfn_to_page(unsigned long start_pfn,
    unsigned long end_pfn, struct zone *zone)
{
 if (zone->contiguous)
  return pfn_to_page(start_pfn);

 return __pageblock_pfn_to_page(start_pfn, end_pfn, zone);
}
