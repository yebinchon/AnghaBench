
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {TYPE_1__* thread; int thread_mask; int thread_flags; } ;
struct irq_desc {int threads_active; int threads_oneshot; } ;
struct TYPE_2__ {int flags; } ;


 int IRQTF_RUNTHREAD ;
 int PF_EXITING ;
 int atomic_inc (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wake_up_process (TYPE_1__*) ;

void __irq_wake_thread(struct irq_desc *desc, struct irqaction *action)
{





 if (action->thread->flags & PF_EXITING)
  return;





 if (test_and_set_bit(IRQTF_RUNTHREAD, &action->thread_flags))
  return;
 desc->threads_oneshot |= action->thread_mask;
 atomic_inc(&desc->threads_active);

 wake_up_process(action->thread);
}
