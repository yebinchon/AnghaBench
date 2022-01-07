
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int rcu_cpu_kthread_status; int rcu_cpu_kthread_task; int rcu_cpu_has_work; } ;


 struct task_struct* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 struct task_struct* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ rcu_data ;
 int rcu_wake_cond (struct task_struct*,struct task_struct*) ;

__attribute__((used)) static void invoke_rcu_core_kthread(void)
{
 struct task_struct *t;
 unsigned long flags;

 local_irq_save(flags);
 __this_cpu_write(rcu_data.rcu_cpu_has_work, 1);
 t = __this_cpu_read(rcu_data.rcu_cpu_kthread_task);
 if (t != ((void*)0) && t != current)
  rcu_wake_cond(t, __this_cpu_read(rcu_data.rcu_cpu_kthread_status));
 local_irq_restore(flags);
}
