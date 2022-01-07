
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {scalar_t__ high; int memory; } ;
typedef int gfp_t ;


 int MEMCG_HIGH ;
 int memcg_memory_event (struct mem_cgroup*,int ) ;
 scalar_t__ page_counter_read (int *) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 int try_to_free_mem_cgroup_pages (struct mem_cgroup*,unsigned int,int ,int) ;

__attribute__((used)) static void reclaim_high(struct mem_cgroup *memcg,
    unsigned int nr_pages,
    gfp_t gfp_mask)
{
 do {
  if (page_counter_read(&memcg->memory) <= memcg->high)
   continue;
  memcg_memory_event(memcg, MEMCG_HIGH);
  try_to_free_mem_cgroup_pages(memcg, nr_pages, gfp_mask, 1);
 } while ((memcg = parent_mem_cgroup(memcg)));
}
