
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int zone_start_pfn; } ;


 unsigned long NR_PAGEBLOCK_BITS ;
 int PAGES_PER_SECTION ;
 TYPE_1__* page_zone (struct page*) ;
 int pageblock_nr_pages ;
 unsigned long pageblock_order ;
 unsigned long round_down (int ,int ) ;

__attribute__((used)) static inline int pfn_to_bitidx(struct page *page, unsigned long pfn)
{




 pfn = pfn - round_down(page_zone(page)->zone_start_pfn, pageblock_nr_pages);
 return (pfn >> pageblock_order) * NR_PAGEBLOCK_BITS;

}
