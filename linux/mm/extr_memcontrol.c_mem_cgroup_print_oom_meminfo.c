
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int cgroup; } ;
struct TYPE_4__ {int failcnt; scalar_t__ max; } ;
struct mem_cgroup {TYPE_1__ css; TYPE_2__ kmem; TYPE_2__ memsw; TYPE_2__ swap; TYPE_2__ memory; } ;


 int K (int ) ;
 scalar_t__ cgroup_subsys_on_dfl (int ) ;
 int kfree (char*) ;
 int memory_cgrp_subsys ;
 char* memory_stat_format (struct mem_cgroup*) ;
 scalar_t__ page_counter_read (TYPE_2__*) ;
 int pr_cont (char*) ;
 int pr_cont_cgroup_path (int ) ;
 int pr_info (char*,...) ;

void mem_cgroup_print_oom_meminfo(struct mem_cgroup *memcg)
{
 char *buf;

 pr_info("memory: usage %llukB, limit %llukB, failcnt %lu\n",
  K((u64)page_counter_read(&memcg->memory)),
  K((u64)memcg->memory.max), memcg->memory.failcnt);
 if (cgroup_subsys_on_dfl(memory_cgrp_subsys))
  pr_info("swap: usage %llukB, limit %llukB, failcnt %lu\n",
   K((u64)page_counter_read(&memcg->swap)),
   K((u64)memcg->swap.max), memcg->swap.failcnt);
 else {
  pr_info("memory+swap: usage %llukB, limit %llukB, failcnt %lu\n",
   K((u64)page_counter_read(&memcg->memsw)),
   K((u64)memcg->memsw.max), memcg->memsw.failcnt);
  pr_info("kmem: usage %llukB, limit %llukB, failcnt %lu\n",
   K((u64)page_counter_read(&memcg->kmem)),
   K((u64)memcg->kmem.max), memcg->kmem.failcnt);
 }

 pr_info("Memory cgroup stats for ");
 pr_cont_cgroup_path(memcg->css.cgroup);
 pr_cont(":");
 buf = memory_stat_format(memcg);
 if (!buf)
  return;
 pr_info("%s", buf);
 kfree(buf);
}
