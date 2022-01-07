
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {unsigned long* pageblock_flags; } ;


 int __pfn_to_section (unsigned long) ;
 TYPE_1__* page_zone (struct page*) ;
 unsigned long* section_to_usemap (int ) ;

__attribute__((used)) static inline unsigned long *get_pageblock_bitmap(struct page *page,
       unsigned long pfn)
{



 return page_zone(page)->pageblock_flags;

}
