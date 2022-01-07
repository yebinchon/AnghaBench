
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_cgroup {TYPE_2__* vmstats_percpu; int * vmevents; TYPE_1__* vmstats_local; } ;
typedef enum vm_event_item { ____Placeholder_vm_event_item } vm_event_item ;
struct TYPE_4__ {int * events; } ;
struct TYPE_3__ {int * events; } ;


 unsigned long MEMCG_CHARGE_BATCH ;
 int __this_cpu_add (int ,unsigned long) ;
 unsigned long __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned long) ;
 int atomic_long_add (unsigned long,int *) ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 scalar_t__ unlikely (int) ;

void __count_memcg_events(struct mem_cgroup *memcg, enum vm_event_item idx,
     unsigned long count)
{
 unsigned long x;

 if (mem_cgroup_disabled())
  return;

 x = count + __this_cpu_read(memcg->vmstats_percpu->events[idx]);
 if (unlikely(x > MEMCG_CHARGE_BATCH)) {
  struct mem_cgroup *mi;





  __this_cpu_add(memcg->vmstats_local->events[idx], x);
  for (mi = memcg; mi; mi = parent_mem_cgroup(mi))
   atomic_long_add(x, &mi->vmevents[idx]);
  x = 0;
 }
 __this_cpu_write(memcg->vmstats_percpu->events[idx], x);
}
