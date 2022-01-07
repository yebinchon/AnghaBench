
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bpf_event; scalar_t__ ksymbol; scalar_t__ context_switch; scalar_t__ freq; scalar_t__ task; scalar_t__ namespaces; scalar_t__ comm; scalar_t__ mmap_data; scalar_t__ mmap; } ;
struct perf_event {int attach_state; int cpu; TYPE_1__ attr; scalar_t__ parent; } ;


 int HZ ;
 int PERF_ATTACH_TASK ;
 int atomic_add_unless (int *,int,int) ;
 int atomic_dec (int *) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int nr_bpf_events ;
 int nr_comm_events ;
 int nr_ksymbol_events ;
 int nr_mmap_events ;
 int nr_namespaces_events ;
 int nr_switch_events ;
 int nr_task_events ;
 int perf_sched_count ;
 int perf_sched_work ;
 int schedule_delayed_work (int *,int ) ;
 int unaccount_event_cpu (struct perf_event*,int ) ;
 int unaccount_freq_event () ;
 int unaccount_pmu_sb_event (struct perf_event*) ;

__attribute__((used)) static void unaccount_event(struct perf_event *event)
{
 bool dec = 0;

 if (event->parent)
  return;

 if (event->attach_state & PERF_ATTACH_TASK)
  dec = 1;
 if (event->attr.mmap || event->attr.mmap_data)
  atomic_dec(&nr_mmap_events);
 if (event->attr.comm)
  atomic_dec(&nr_comm_events);
 if (event->attr.namespaces)
  atomic_dec(&nr_namespaces_events);
 if (event->attr.task)
  atomic_dec(&nr_task_events);
 if (event->attr.freq)
  unaccount_freq_event();
 if (event->attr.context_switch) {
  dec = 1;
  atomic_dec(&nr_switch_events);
 }
 if (is_cgroup_event(event))
  dec = 1;
 if (has_branch_stack(event))
  dec = 1;
 if (event->attr.ksymbol)
  atomic_dec(&nr_ksymbol_events);
 if (event->attr.bpf_event)
  atomic_dec(&nr_bpf_events);

 if (dec) {
  if (!atomic_add_unless(&perf_sched_count, -1, 1))
   schedule_delayed_work(&perf_sched_work, HZ);
 }

 unaccount_event_cpu(event, event->cpu);

 unaccount_pmu_sb_event(event);
}
