
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_zone_bm_rtree {unsigned long start_pfn; unsigned long end_pfn; int leaves; int nodes; } ;
struct chain_allocator {int dummy; } ;
typedef int gfp_t ;


 int BM_BITS_PER_BLOCK ;
 unsigned int DIV_ROUND_UP (unsigned long,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int PG_UNSAFE_CLEAR ;
 scalar_t__ add_rtree_block (struct mem_zone_bm_rtree*,int ,int,struct chain_allocator*) ;
 struct mem_zone_bm_rtree* chain_alloc (struct chain_allocator*,int) ;
 int free_zone_bm_rtree (struct mem_zone_bm_rtree*,int ) ;

__attribute__((used)) static struct mem_zone_bm_rtree *create_zone_bm_rtree(gfp_t gfp_mask,
            int safe_needed,
            struct chain_allocator *ca,
            unsigned long start,
            unsigned long end)
{
 struct mem_zone_bm_rtree *zone;
 unsigned int i, nr_blocks;
 unsigned long pages;

 pages = end - start;
 zone = chain_alloc(ca, sizeof(struct mem_zone_bm_rtree));
 if (!zone)
  return ((void*)0);

 INIT_LIST_HEAD(&zone->nodes);
 INIT_LIST_HEAD(&zone->leaves);
 zone->start_pfn = start;
 zone->end_pfn = end;
 nr_blocks = DIV_ROUND_UP(pages, BM_BITS_PER_BLOCK);

 for (i = 0; i < nr_blocks; i++) {
  if (add_rtree_block(zone, gfp_mask, safe_needed, ca)) {
   free_zone_bm_rtree(zone, PG_UNSAFE_CLEAR);
   return ((void*)0);
  }
 }

 return zone;
}
