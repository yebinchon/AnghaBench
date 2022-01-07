
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int list; } ;
typedef int gfp_t ;


 int DMA_DEBUG_DYNAMIC_ENTRIES ;
 int ENOMEM ;
 int free_entries ;
 scalar_t__ get_zeroed_page (int ) ;
 int list_add_tail (int *,int *) ;
 int nr_total_entries ;
 int num_free_entries ;

__attribute__((used)) static int dma_debug_create_entries(gfp_t gfp)
{
 struct dma_debug_entry *entry;
 int i;

 entry = (void *)get_zeroed_page(gfp);
 if (!entry)
  return -ENOMEM;

 for (i = 0; i < DMA_DEBUG_DYNAMIC_ENTRIES; i++)
  list_add_tail(&entry[i].list, &free_entries);

 num_free_entries += DMA_DEBUG_DYNAMIC_ENTRIES;
 nr_total_entries += DMA_DEBUG_DYNAMIC_ENTRIES;

 return 0;
}
