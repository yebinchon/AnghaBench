
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int rcu_urgent_qs; } ;


 int barrier () ;
 int per_cpu_ptr (int *,int) ;
 TYPE_1__ rcu_data ;
 int smp_store_release (int ,int) ;
 int task_cpu (struct task_struct*) ;
 int task_curr (struct task_struct*) ;

void rcu_request_urgent_qs_task(struct task_struct *t)
{
 int cpu;

 barrier();
 cpu = task_cpu(t);
 if (!task_curr(t))
  return;
 smp_store_release(per_cpu_ptr(&rcu_data.rcu_urgent_qs, cpu), 1);
}
