
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_resched_tasks_rcu_qs () ;
 int kthread_should_stop () ;
 int msleep (int) ;
 int trace_do_benchmark () ;

__attribute__((used)) static int benchmark_event_kthread(void *arg)
{

 msleep(100);

 while (!kthread_should_stop()) {

  trace_do_benchmark();
  cond_resched_tasks_rcu_qs();
 }

 return 0;
}
