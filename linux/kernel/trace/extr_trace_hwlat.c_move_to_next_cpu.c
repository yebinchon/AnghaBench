
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int cpus_ptr; } ;


 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,int ,int ) ;
 int cpumask_clear (struct cpumask*) ;
 int cpumask_equal (struct cpumask*,int ) ;
 int cpumask_first (struct cpumask*) ;
 int cpumask_next (int ,struct cpumask*) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 TYPE_1__* current ;
 int disable_migrate ;
 int get_online_cpus () ;
 int nr_cpu_ids ;
 int put_online_cpus () ;
 struct cpumask save_cpumask ;
 int sched_setaffinity (int ,struct cpumask*) ;
 int smp_processor_id () ;
 int tracing_buffer_mask ;

__attribute__((used)) static void move_to_next_cpu(void)
{
 struct cpumask *current_mask = &save_cpumask;
 int next_cpu;

 if (disable_migrate)
  return;





 if (!cpumask_equal(current_mask, current->cpus_ptr))
  goto disable;

 get_online_cpus();
 cpumask_and(current_mask, cpu_online_mask, tracing_buffer_mask);
 next_cpu = cpumask_next(smp_processor_id(), current_mask);
 put_online_cpus();

 if (next_cpu >= nr_cpu_ids)
  next_cpu = cpumask_first(current_mask);

 if (next_cpu >= nr_cpu_ids)
  goto disable;

 cpumask_clear(current_mask);
 cpumask_set_cpu(next_cpu, current_mask);

 sched_setaffinity(0, current_mask);
 return;

 disable:
 disable_migrate = 1;
}
