
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int NR_ISOLATED_ANON ;
 int NR_ISOLATED_FILE ;
 int NR_SLAB_UNRECLAIMABLE ;
 int NR_UNEVICTABLE ;
 unsigned long global_node_page_state (int ) ;

__attribute__((used)) static bool is_dump_unreclaim_slabs(void)
{
 unsigned long nr_lru;

 nr_lru = global_node_page_state(NR_ACTIVE_ANON) +
   global_node_page_state(NR_INACTIVE_ANON) +
   global_node_page_state(NR_ACTIVE_FILE) +
   global_node_page_state(NR_INACTIVE_FILE) +
   global_node_page_state(NR_ISOLATED_ANON) +
   global_node_page_state(NR_ISOLATED_FILE) +
   global_node_page_state(NR_UNEVICTABLE);

 return (global_node_page_state(NR_SLAB_UNRECLAIMABLE) > nr_lru);
}
