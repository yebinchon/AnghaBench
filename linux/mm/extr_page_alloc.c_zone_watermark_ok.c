
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 int NR_FREE_PAGES ;
 int __zone_watermark_ok (struct zone*,unsigned int,unsigned long,int,unsigned int,int ) ;
 int zone_page_state (struct zone*,int ) ;

bool zone_watermark_ok(struct zone *z, unsigned int order, unsigned long mark,
        int classzone_idx, unsigned int alloc_flags)
{
 return __zone_watermark_ok(z, order, mark, classzone_idx, alloc_flags,
     zone_page_state(z, NR_FREE_PAGES));
}
