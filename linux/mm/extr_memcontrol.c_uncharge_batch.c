
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct uncharge_gather {unsigned long nr_anon; unsigned long nr_file; unsigned long nr_kmem; unsigned long nr_huge; unsigned long nr_shmem; TYPE_2__* memcg; int dummy_page; int pgpgout; } ;
struct TYPE_8__ {int css; TYPE_1__* vmstats_percpu; int kmem; int memsw; int memory; } ;
struct TYPE_7__ {int nr_page_events; } ;


 int MEMCG_CACHE ;
 int MEMCG_RSS ;
 int MEMCG_RSS_HUGE ;
 int NR_SHMEM ;
 int PGPGOUT ;
 int __count_memcg_events (TYPE_2__*,int ,int ) ;
 int __mod_memcg_state (TYPE_2__*,int ,unsigned long) ;
 int __this_cpu_add (int ,unsigned long) ;
 int cgroup_subsys_on_dfl (int ) ;
 int css_put_many (int *,unsigned long) ;
 scalar_t__ do_memsw_account () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mem_cgroup_is_root (TYPE_2__*) ;
 int memcg_check_events (TYPE_2__*,int ) ;
 int memcg_oom_recover (TYPE_2__*) ;
 int memory_cgrp_subsys ;
 int page_counter_uncharge (int *,unsigned long) ;

__attribute__((used)) static void uncharge_batch(const struct uncharge_gather *ug)
{
 unsigned long nr_pages = ug->nr_anon + ug->nr_file + ug->nr_kmem;
 unsigned long flags;

 if (!mem_cgroup_is_root(ug->memcg)) {
  page_counter_uncharge(&ug->memcg->memory, nr_pages);
  if (do_memsw_account())
   page_counter_uncharge(&ug->memcg->memsw, nr_pages);
  if (!cgroup_subsys_on_dfl(memory_cgrp_subsys) && ug->nr_kmem)
   page_counter_uncharge(&ug->memcg->kmem, ug->nr_kmem);
  memcg_oom_recover(ug->memcg);
 }

 local_irq_save(flags);
 __mod_memcg_state(ug->memcg, MEMCG_RSS, -ug->nr_anon);
 __mod_memcg_state(ug->memcg, MEMCG_CACHE, -ug->nr_file);
 __mod_memcg_state(ug->memcg, MEMCG_RSS_HUGE, -ug->nr_huge);
 __mod_memcg_state(ug->memcg, NR_SHMEM, -ug->nr_shmem);
 __count_memcg_events(ug->memcg, PGPGOUT, ug->pgpgout);
 __this_cpu_add(ug->memcg->vmstats_percpu->nr_page_events, nr_pages);
 memcg_check_events(ug->memcg, ug->dummy_page);
 local_irq_restore(flags);

 if (!mem_cgroup_is_root(ug->memcg))
  css_put_many(&ug->memcg->css, nr_pages);
}
