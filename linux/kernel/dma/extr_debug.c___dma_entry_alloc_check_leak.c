
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ DMA_DEBUG_DYNAMIC_ENTRIES ;
 scalar_t__ nr_prealloc_entries ;
 scalar_t__ nr_total_entries ;
 int pr_info (char*,scalar_t__,scalar_t__) ;

void __dma_entry_alloc_check_leak(void)
{
 u32 tmp = nr_total_entries % nr_prealloc_entries;


 if (tmp < DMA_DEBUG_DYNAMIC_ENTRIES) {
  pr_info("dma_debug_entry pool grown to %u (%u00%%)\n",
   nr_total_entries,
   (nr_total_entries / nr_prealloc_entries));
 }
}
