
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t N_MEMORY ;
 struct page* new_page_nodemask (struct page*,int ,int *) ;
 int * node_states ;
 int numa_node_id () ;

struct page *alloc_migrate_target(struct page *page, unsigned long private)
{
 return new_page_nodemask(page, numa_node_id(), &node_states[N_MEMORY]);
}
