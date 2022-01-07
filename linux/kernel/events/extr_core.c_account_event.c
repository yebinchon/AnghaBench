
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bpf_event; scalar_t__ ksymbol; scalar_t__ context_switch; scalar_t__ freq; scalar_t__ task; scalar_t__ namespaces; scalar_t__ comm; scalar_t__ mmap_data; scalar_t__ mmap; } ;
struct perf_event {int attach_state; int cpu; TYPE_1__ attr; scalar_t__ parent; } ;


 int PERF_ATTACH_TASK ;
 int account_event_cpu (struct perf_event*,int ) ;
 int account_freq_event () ;
 int account_pmu_sb_event (struct perf_event*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int atomic_read (int *) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_bpf_events ;
 int nr_comm_events ;
 int nr_ksymbol_events ;
 int nr_mmap_events ;
 int nr_namespaces_events ;
 int nr_switch_events ;
 int nr_task_events ;
 int perf_sched_count ;
 int perf_sched_events ;
 int perf_sched_mutex ;
 int static_branch_enable (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void account_event(struct perf_event *event)
{
 bool inc = 0;

 if (event->parent)
  return;

 if (event->attach_state & PERF_ATTACH_TASK)
  inc = 1;
 if (event->attr.mmap || event->attr.mmap_data)
  atomic_inc(&nr_mmap_events);
 if (event->attr.comm)
  atomic_inc(&nr_comm_events);
 if (event->attr.namespaces)
  atomic_inc(&nr_namespaces_events);
 if (event->attr.task)
  atomic_inc(&nr_task_events);
 if (event->attr.freq)
  account_freq_event();
 if (event->attr.context_switch) {
  atomic_inc(&nr_switch_events);
  inc = 1;
 }
 if (has_branch_stack(event))
  inc = 1;
 if (is_cgroup_event(event))
  inc = 1;
 if (event->attr.ksymbol)
  atomic_inc(&nr_ksymbol_events);
 if (event->attr.bpf_event)
  atomic_inc(&nr_bpf_events);

 if (inc) {





  if (atomic_inc_not_zero(&perf_sched_count))
   goto enabled;

  mutex_lock(&perf_sched_mutex);
  if (!atomic_read(&perf_sched_count)) {
   static_branch_enable(&perf_sched_events);





   synchronize_rcu();
  }




  atomic_inc(&perf_sched_count);
  mutex_unlock(&perf_sched_mutex);
 }
enabled:

 account_event_cpu(event, event->cpu);

 account_pmu_sb_event(event);
}
