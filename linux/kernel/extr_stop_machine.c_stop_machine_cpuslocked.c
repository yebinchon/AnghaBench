
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_stop_data {int (* fn ) (void*) ;void* data; int num_threads; struct cpumask const* active_cpus; } ;
struct cpumask {int dummy; } ;
typedef int (* cpu_stop_fn_t ) (void*) ;


 int MULTI_STOP_PREPARE ;
 int WARN_ON_ONCE (int) ;
 int cpu_online_mask ;
 int hard_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int lockdep_assert_cpus_held () ;
 int multi_cpu_stop ;
 int num_online_cpus () ;
 int set_state (struct multi_stop_data*,int ) ;
 int stop_cpus (int ,int ,struct multi_stop_data*) ;
 int stop_machine_initialized ;
 int stub1 (void*) ;

int stop_machine_cpuslocked(cpu_stop_fn_t fn, void *data,
       const struct cpumask *cpus)
{
 struct multi_stop_data msdata = {
  .fn = fn,
  .data = data,
  .num_threads = num_online_cpus(),
  .active_cpus = cpus,
 };

 lockdep_assert_cpus_held();

 if (!stop_machine_initialized) {





  unsigned long flags;
  int ret;

  WARN_ON_ONCE(msdata.num_threads != 1);

  local_irq_save(flags);
  hard_irq_disable();
  ret = (*fn)(data);
  local_irq_restore(flags);

  return ret;
 }


 set_state(&msdata, MULTI_STOP_PREPARE);
 return stop_cpus(cpu_online_mask, multi_cpu_stop, &msdata);
}
