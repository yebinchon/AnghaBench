
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_ACTIVE_FILE ;
 int NR_FREE_PAGES ;
 int NR_INACTIVE_FILE ;
 scalar_t__ global_node_page_state (int ) ;
 unsigned long global_zone_page_state (int ) ;
 scalar_t__ highmem_dirtyable_memory (unsigned long) ;
 scalar_t__ min (unsigned long,int ) ;
 int totalreserve_pages ;
 int vm_highmem_is_dirtyable ;

__attribute__((used)) static unsigned long global_dirtyable_memory(void)
{
 unsigned long x;

 x = global_zone_page_state(NR_FREE_PAGES);





 x -= min(x, totalreserve_pages);

 x += global_node_page_state(NR_INACTIVE_FILE);
 x += global_node_page_state(NR_ACTIVE_FILE);

 if (!vm_highmem_is_dirtyable)
  x -= highmem_dirtyable_memory(x);

 return x + 1;
}
