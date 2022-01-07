
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_pm_event { ____Placeholder_cpu_pm_event } cpu_pm_event ;


 int __atomic_notifier_call_chain (int *,int,int *,int,int*) ;
 int cpu_pm_notifier_chain ;
 int notifier_to_errno (int) ;
 int rcu_irq_enter_irqson () ;
 int rcu_irq_exit_irqson () ;

__attribute__((used)) static int cpu_pm_notify(enum cpu_pm_event event, int nr_to_call, int *nr_calls)
{
 int ret;






 rcu_irq_enter_irqson();
 ret = __atomic_notifier_call_chain(&cpu_pm_notifier_chain, event, ((void*)0),
  nr_to_call, nr_calls);
 rcu_irq_exit_irqson();

 return notifier_to_errno(ret);
}
