
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_cgroup {TYPE_2__* vmstats_percpu; int * vmstats; TYPE_1__* vmstats_local; } ;
struct TYPE_4__ {int * stat; } ;
struct TYPE_3__ {int * stat; } ;


 scalar_t__ MEMCG_CHARGE_BATCH ;
 int __this_cpu_add (int ,long) ;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,long) ;
 scalar_t__ abs (long) ;
 int atomic_long_add (long,int *) ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 scalar_t__ unlikely (int) ;

void __mod_memcg_state(struct mem_cgroup *memcg, int idx, int val)
{
 long x;

 if (mem_cgroup_disabled())
  return;

 x = val + __this_cpu_read(memcg->vmstats_percpu->stat[idx]);
 if (unlikely(abs(x) > MEMCG_CHARGE_BATCH)) {
  struct mem_cgroup *mi;





  __this_cpu_add(memcg->vmstats_local->stat[idx], x);
  for (mi = memcg; mi; mi = parent_mem_cgroup(mi))
   atomic_long_add(x, &mi->vmstats[idx]);
  x = 0;
 }
 __this_cpu_write(memcg->vmstats_percpu->stat[idx], x);
}
