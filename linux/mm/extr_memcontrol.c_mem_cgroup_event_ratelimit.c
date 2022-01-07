
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup {TYPE_1__* vmstats_percpu; } ;
typedef enum mem_cgroup_events_target { ____Placeholder_mem_cgroup_events_target } mem_cgroup_events_target ;
struct TYPE_2__ {int * targets; int nr_page_events; } ;





 int NUMAINFO_EVENTS_TARGET ;
 int SOFTLIMIT_EVENTS_TARGET ;
 int THRESHOLDS_EVENTS_TARGET ;
 unsigned long __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned long) ;

__attribute__((used)) static bool mem_cgroup_event_ratelimit(struct mem_cgroup *memcg,
           enum mem_cgroup_events_target target)
{
 unsigned long val, next;

 val = __this_cpu_read(memcg->vmstats_percpu->nr_page_events);
 next = __this_cpu_read(memcg->vmstats_percpu->targets[target]);

 if ((long)(next - val) < 0) {
  switch (target) {
  case 128:
   next = val + THRESHOLDS_EVENTS_TARGET;
   break;
  case 129:
   next = val + SOFTLIMIT_EVENTS_TARGET;
   break;
  case 130:
   next = val + NUMAINFO_EVENTS_TARGET;
   break;
  default:
   break;
  }
  __this_cpu_write(memcg->vmstats_percpu->targets[target], next);
  return 1;
 }
 return 0;
}
