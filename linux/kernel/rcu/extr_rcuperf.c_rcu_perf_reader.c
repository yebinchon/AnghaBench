
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* readlock ) () ;int (* readunlock ) (int) ;} ;


 int MAX_NICE ;
 int VERBOSE_PERFOUT_STRING (char*) ;
 int atomic_inc (int *) ;
 int cpumask_of (long) ;
 TYPE_1__* cur_ops ;
 int current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int n_rcu_perf_reader_started ;
 long nr_cpu_ids ;
 int rcu_perf_wait_shutdown () ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int set_user_nice (int ,int ) ;
 int stub1 () ;
 int stub2 (int) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;

__attribute__((used)) static int
rcu_perf_reader(void *arg)
{
 unsigned long flags;
 int idx;
 long me = (long)arg;

 VERBOSE_PERFOUT_STRING("rcu_perf_reader task started");
 set_cpus_allowed_ptr(current, cpumask_of(me % nr_cpu_ids));
 set_user_nice(current, MAX_NICE);
 atomic_inc(&n_rcu_perf_reader_started);

 do {
  local_irq_save(flags);
  idx = cur_ops->readlock();
  cur_ops->readunlock(idx);
  local_irq_restore(flags);
  rcu_perf_wait_shutdown();
 } while (!torture_must_stop());
 torture_kthread_stopping("rcu_perf_reader");
 return 0;
}
