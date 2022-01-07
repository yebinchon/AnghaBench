
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long max; } ;
struct TYPE_5__ {unsigned long max; } ;
struct TYPE_4__ {unsigned long max; } ;
struct mem_cgroup {TYPE_3__ swap; TYPE_2__ memsw; TYPE_1__ memory; } ;


 scalar_t__ mem_cgroup_swappiness (struct mem_cgroup*) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ total_swap_pages ;

unsigned long mem_cgroup_get_max(struct mem_cgroup *memcg)
{
 unsigned long max;

 max = memcg->memory.max;
 if (mem_cgroup_swappiness(memcg)) {
  unsigned long memsw_max;
  unsigned long swap_max;

  memsw_max = memcg->memsw.max;
  swap_max = memcg->swap.max;
  swap_max = min(swap_max, (unsigned long)total_swap_pages);
  max = min(max + swap_max, memsw_max);
 }
 return max;
}
