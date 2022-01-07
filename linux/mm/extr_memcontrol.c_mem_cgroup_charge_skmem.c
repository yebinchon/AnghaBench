
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {int dummy; } ;
struct mem_cgroup {int tcpmem_pressure; int tcpmem; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int MEMCG_SOCK ;
 int __GFP_NOFAIL ;
 int cgroup_subsys_on_dfl (int ) ;
 scalar_t__ in_softirq () ;
 int memory_cgrp_subsys ;
 int mod_memcg_state (struct mem_cgroup*,int ,unsigned int) ;
 int page_counter_charge (int *,unsigned int) ;
 scalar_t__ page_counter_try_charge (int *,unsigned int,struct page_counter**) ;
 scalar_t__ try_charge (struct mem_cgroup*,int,unsigned int) ;

bool mem_cgroup_charge_skmem(struct mem_cgroup *memcg, unsigned int nr_pages)
{
 gfp_t gfp_mask = GFP_KERNEL;

 if (!cgroup_subsys_on_dfl(memory_cgrp_subsys)) {
  struct page_counter *fail;

  if (page_counter_try_charge(&memcg->tcpmem, nr_pages, &fail)) {
   memcg->tcpmem_pressure = 0;
   return 1;
  }
  page_counter_charge(&memcg->tcpmem, nr_pages);
  memcg->tcpmem_pressure = 1;
  return 0;
 }


 if (in_softirq())
  gfp_mask = GFP_NOWAIT;

 mod_memcg_state(memcg, MEMCG_SOCK, nr_pages);

 if (try_charge(memcg, gfp_mask, nr_pages) == 0)
  return 1;

 try_charge(memcg, gfp_mask|__GFP_NOFAIL, nr_pages);
 return 0;
}
