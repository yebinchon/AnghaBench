
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int cpu_online_mask ;
 scalar_t__ cpumask_empty (int ) ;
 int cpumask_first_and (int ,int ) ;
 int cpumask_next_and (int,int ,int ) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 scalar_t__ likely (int) ;
 int nr_cpu_ids ;
 int pr_warn (char*) ;
 scalar_t__ unlikely (int) ;
 int wq_debug_force_rr_cpu ;
 int wq_rr_cpu_last ;
 int wq_unbound_cpumask ;

__attribute__((used)) static int wq_select_unbound_cpu(int cpu)
{
 static bool printed_dbg_warning;
 int new_cpu;

 if (likely(!wq_debug_force_rr_cpu)) {
  if (cpumask_test_cpu(cpu, wq_unbound_cpumask))
   return cpu;
 } else if (!printed_dbg_warning) {
  pr_warn("workqueue: round-robin CPU selection forced, expect performance impact\n");
  printed_dbg_warning = 1;
 }

 if (cpumask_empty(wq_unbound_cpumask))
  return cpu;

 new_cpu = __this_cpu_read(wq_rr_cpu_last);
 new_cpu = cpumask_next_and(new_cpu, wq_unbound_cpumask, cpu_online_mask);
 if (unlikely(new_cpu >= nr_cpu_ids)) {
  new_cpu = cpumask_first_and(wq_unbound_cpumask, cpu_online_mask);
  if (unlikely(new_cpu >= nr_cpu_ids))
   return cpu;
 }
 __this_cpu_write(wq_rr_cpu_last, new_cpu);

 return new_cpu;
}
