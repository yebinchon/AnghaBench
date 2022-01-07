
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int memsw; int memory; } ;


 int MEMCG_CACHE ;
 int MEMCG_RSS ;
 int MEMCG_SWAP ;
 scalar_t__ mem_cgroup_is_root (struct mem_cgroup*) ;
 unsigned long memcg_page_state (struct mem_cgroup*,int ) ;
 unsigned long page_counter_read (int *) ;

__attribute__((used)) static unsigned long mem_cgroup_usage(struct mem_cgroup *memcg, bool swap)
{
 unsigned long val;

 if (mem_cgroup_is_root(memcg)) {
  val = memcg_page_state(memcg, MEMCG_CACHE) +
   memcg_page_state(memcg, MEMCG_RSS);
  if (swap)
   val += memcg_page_state(memcg, MEMCG_SWAP);
 } else {
  if (!swap)
   val = page_counter_read(&memcg->memory);
  else
   val = page_counter_read(&memcg->memsw);
 }
 return val;
}
