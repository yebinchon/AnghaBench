
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_stop_data {void* data; scalar_t__ num_threads; struct cpumask const* active_cpus; int fn; } ;
struct cpumask {int dummy; } ;
struct cpu_stop_done {int ret; int completion; } ;
typedef int cpu_stop_fn_t ;


 int BUG_ON (int ) ;
 int MULTI_STOP_PREPARE ;
 int completion_done (int *) ;
 int cpu_active (int ) ;
 int cpu_active_mask ;
 int cpu_relax () ;
 int cpu_stop_init_done (struct cpu_stop_done*,scalar_t__) ;
 int multi_cpu_stop (struct multi_stop_data*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ num_active_cpus () ;
 int queue_stop_cpus_work (int ,int (*) (struct multi_stop_data*),struct multi_stop_data*,struct cpu_stop_done*) ;
 int raw_smp_processor_id () ;
 int set_state (struct multi_stop_data*,int ) ;
 int stop_cpus_mutex ;

int stop_machine_from_inactive_cpu(cpu_stop_fn_t fn, void *data,
      const struct cpumask *cpus)
{
 struct multi_stop_data msdata = { .fn = fn, .data = data,
         .active_cpus = cpus };
 struct cpu_stop_done done;
 int ret;


 BUG_ON(cpu_active(raw_smp_processor_id()));
 msdata.num_threads = num_active_cpus() + 1;


 while (!mutex_trylock(&stop_cpus_mutex))
  cpu_relax();


 set_state(&msdata, MULTI_STOP_PREPARE);
 cpu_stop_init_done(&done, num_active_cpus());
 queue_stop_cpus_work(cpu_active_mask, multi_cpu_stop, &msdata,
        &done);
 ret = multi_cpu_stop(&msdata);


 while (!completion_done(&done.completion))
  cpu_relax();

 mutex_unlock(&stop_cpus_mutex);
 return ret ?: done.ret;
}
