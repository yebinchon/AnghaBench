
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 unsigned long BM_END_OF_MAP ;
 scalar_t__ WARN_ON (int) ;
 int clear_highpage (int ) ;
 struct memory_bitmap* free_pages_map ;
 unsigned long memory_bm_next_pfn (struct memory_bitmap*) ;
 int memory_bm_position_reset (struct memory_bitmap*) ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int pr_info (char*) ;

void clear_free_pages(void)
{
}
