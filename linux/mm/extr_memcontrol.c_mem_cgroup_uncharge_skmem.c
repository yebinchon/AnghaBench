
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int tcpmem; } ;


 int MEMCG_SOCK ;
 int cgroup_subsys_on_dfl (int ) ;
 int memory_cgrp_subsys ;
 int mod_memcg_state (struct mem_cgroup*,int ,unsigned int) ;
 int page_counter_uncharge (int *,unsigned int) ;
 int refill_stock (struct mem_cgroup*,unsigned int) ;

void mem_cgroup_uncharge_skmem(struct mem_cgroup *memcg, unsigned int nr_pages)
{
 if (!cgroup_subsys_on_dfl(memory_cgrp_subsys)) {
  page_counter_uncharge(&memcg->tcpmem, nr_pages);
  return;
 }

 mod_memcg_state(memcg, MEMCG_SOCK, -nr_pages);

 refill_stock(memcg, nr_pages);
}
