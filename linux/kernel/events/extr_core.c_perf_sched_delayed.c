
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_sched_count ;
 int perf_sched_events ;
 int perf_sched_mutex ;
 int static_branch_disable (int *) ;

__attribute__((used)) static void perf_sched_delayed(struct work_struct *work)
{
 mutex_lock(&perf_sched_mutex);
 if (atomic_dec_and_test(&perf_sched_count))
  static_branch_disable(&perf_sched_events);
 mutex_unlock(&perf_sched_mutex);
}
