
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct cpuacct {int cpustat; } ;
struct TYPE_2__ {int * cpustat; } ;


 struct cpuacct* parent_ca (struct cpuacct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct cpuacct root_cpuacct ;
 struct cpuacct* task_ca (struct task_struct*) ;
 TYPE_1__* this_cpu_ptr (int ) ;

void cpuacct_account_field(struct task_struct *tsk, int index, u64 val)
{
 struct cpuacct *ca;

 rcu_read_lock();
 for (ca = task_ca(tsk); ca != &root_cpuacct; ca = parent_ca(ca))
  this_cpu_ptr(ca->cpustat)->cpustat[index] += val;
 rcu_read_unlock();
}
