
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 int kernel_power_off () ;
 int n_rcu_perf_writer_finished ;
 scalar_t__ nrealwriters ;
 int rcu_perf_cleanup () ;
 int shutdown_wq ;
 int smp_mb () ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
rcu_perf_shutdown(void *arg)
{
 do {
  wait_event(shutdown_wq,
      atomic_read(&n_rcu_perf_writer_finished) >=
      nrealwriters);
 } while (atomic_read(&n_rcu_perf_writer_finished) < nrealwriters);
 smp_mb();
 rcu_perf_cleanup();
 kernel_power_off();
 return -EINVAL;
}
