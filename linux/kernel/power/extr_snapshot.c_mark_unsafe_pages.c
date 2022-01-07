
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 unsigned long BM_END_OF_MAP ;
 scalar_t__ allocated_unsafe_pages ;
 int duplicate_memory_bitmap (int ,struct memory_bitmap*) ;
 int free_pages_map ;
 int memory_bm_clear_current (int ) ;
 unsigned long memory_bm_next_pfn (int ) ;
 int memory_bm_position_reset (int ) ;

__attribute__((used)) static void mark_unsafe_pages(struct memory_bitmap *bm)
{
 unsigned long pfn;


 memory_bm_position_reset(free_pages_map);
 pfn = memory_bm_next_pfn(free_pages_map);
 while (pfn != BM_END_OF_MAP) {
  memory_bm_clear_current(free_pages_map);
  pfn = memory_bm_next_pfn(free_pages_map);
 }


 duplicate_memory_bitmap(free_pages_map, bm);

 allocated_unsafe_pages = 0;
}
