
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int SCHED_FIFO ;
 int current ;
 int kthread_prio ;
 int sched_setscheduler_nocheck (int ,int ,struct sched_param*) ;

__attribute__((used)) static void rcu_cpu_kthread_setup(unsigned int cpu)
{






}
