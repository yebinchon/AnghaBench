
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int pid; int comm; } ;
struct irqaction {int thread_flags; int irq; } ;
struct irq_desc {int dummy; } ;
struct callback_head {int dummy; } ;


 int IRQTF_RUNTHREAD ;
 int PF_EXITING ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct task_struct* current ;
 int irq_finalize_oneshot (struct irq_desc*,struct irqaction*) ;
 struct irq_desc* irq_to_desc (int ) ;
 struct irqaction* kthread_data (struct task_struct*) ;
 int pr_err (char*,int ,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_threads_waitq (struct irq_desc*) ;

__attribute__((used)) static void irq_thread_dtor(struct callback_head *unused)
{
 struct task_struct *tsk = current;
 struct irq_desc *desc;
 struct irqaction *action;

 if (WARN_ON_ONCE(!(current->flags & PF_EXITING)))
  return;

 action = kthread_data(tsk);

 pr_err("exiting task \"%s\" (%d) is an active IRQ thread (irq %d)\n",
        tsk->comm, tsk->pid, action->irq);


 desc = irq_to_desc(action->irq);




 if (test_and_clear_bit(IRQTF_RUNTHREAD, &action->thread_flags))
  wake_threads_waitq(desc);


 irq_finalize_oneshot(desc, action);
}
