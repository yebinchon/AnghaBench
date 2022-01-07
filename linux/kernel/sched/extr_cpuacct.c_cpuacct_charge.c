
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct cpuacct {int cpuusage; } ;
struct TYPE_2__ {int * usages; } ;


 int CPUACCT_STAT_SYSTEM ;
 int CPUACCT_STAT_USER ;
 struct cpuacct* parent_ca (struct cpuacct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct cpuacct* task_ca (struct task_struct*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 TYPE_1__* this_cpu_ptr (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void cpuacct_charge(struct task_struct *tsk, u64 cputime)
{
 struct cpuacct *ca;
 int index = CPUACCT_STAT_SYSTEM;
 struct pt_regs *regs = task_pt_regs(tsk);

 if (regs && user_mode(regs))
  index = CPUACCT_STAT_USER;

 rcu_read_lock();

 for (ca = task_ca(tsk); ca; ca = parent_ca(ca))
  this_cpu_ptr(ca->cpuusage)->usages[index] += cputime;

 rcu_read_unlock();
}
