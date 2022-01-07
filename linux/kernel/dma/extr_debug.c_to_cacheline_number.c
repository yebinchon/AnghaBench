
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int pfn; int offset; } ;
typedef int phys_addr_t ;


 int CACHELINE_PER_PAGE_SHIFT ;
 int L1_CACHE_SHIFT ;

__attribute__((used)) static phys_addr_t to_cacheline_number(struct dma_debug_entry *entry)
{
 return (entry->pfn << CACHELINE_PER_PAGE_SHIFT) +
  (entry->offset >> L1_CACHE_SHIFT);
}
