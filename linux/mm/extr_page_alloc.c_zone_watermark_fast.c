
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long* lowmem_reserve; } ;


 unsigned int ALLOC_CMA ;
 int NR_FREE_CMA_PAGES ;
 int NR_FREE_PAGES ;
 int __zone_watermark_ok (struct zone*,unsigned int,unsigned long,int,unsigned int,long) ;
 long zone_page_state (struct zone*,int ) ;

__attribute__((used)) static inline bool zone_watermark_fast(struct zone *z, unsigned int order,
  unsigned long mark, int classzone_idx, unsigned int alloc_flags)
{
 long free_pages = zone_page_state(z, NR_FREE_PAGES);
 long cma_pages = 0;
 if (!order && (free_pages - cma_pages) > mark + z->lowmem_reserve[classzone_idx])
  return 1;

 return __zone_watermark_ok(z, order, mark, classzone_idx, alloc_flags,
     free_pages);
}
