
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu_need_heavy_qs; int rcu_urgent_qs; } ;


 int TPS (char*) ;
 int current ;
 int raw_cpu_read (int ) ;
 TYPE_1__ rcu_data ;
 int rcu_momentary_dyntick_idle () ;
 int rcu_qs () ;
 int rcu_tasks_qs (int ) ;
 int smp_load_acquire (int ) ;
 int this_cpu_ptr (int *) ;
 int this_cpu_write (int ,int) ;
 int trace_rcu_utilization (int ) ;
 scalar_t__ unlikely (int ) ;

void rcu_note_context_switch(bool preempt)
{
 trace_rcu_utilization(TPS("Start context switch"));
 rcu_qs();

 if (!smp_load_acquire(this_cpu_ptr(&rcu_data.rcu_urgent_qs)))
  goto out;
 this_cpu_write(rcu_data.rcu_urgent_qs, 0);
 if (unlikely(raw_cpu_read(rcu_data.rcu_need_heavy_qs)))
  rcu_momentary_dyntick_idle();
 if (!preempt)
  rcu_tasks_qs(current);
out:
 trace_rcu_utilization(TPS("End context switch"));
}
