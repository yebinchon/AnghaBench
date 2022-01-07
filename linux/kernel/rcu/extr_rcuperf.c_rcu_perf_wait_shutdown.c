
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int cond_resched_tasks_rcu_qs () ;
 int n_rcu_perf_writer_finished ;
 scalar_t__ nrealwriters ;
 int schedule_timeout_uninterruptible (int) ;
 int torture_must_stop () ;

__attribute__((used)) static void rcu_perf_wait_shutdown(void)
{
 cond_resched_tasks_rcu_qs();
 if (atomic_read(&n_rcu_perf_writer_finished) < nrealwriters)
  return;
 while (!torture_must_stop())
  schedule_timeout_uninterruptible(1);
}
