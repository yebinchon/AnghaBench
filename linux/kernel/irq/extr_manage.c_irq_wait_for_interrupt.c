
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int thread_flags; } ;


 int IRQTF_RUNTHREAD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 scalar_t__ kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int irq_wait_for_interrupt(struct irqaction *action)
{
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (kthread_should_stop()) {

   if (test_and_clear_bit(IRQTF_RUNTHREAD,
            &action->thread_flags)) {
    __set_current_state(TASK_RUNNING);
    return 0;
   }
   __set_current_state(TASK_RUNNING);
   return -1;
  }

  if (test_and_clear_bit(IRQTF_RUNTHREAD,
           &action->thread_flags)) {
   __set_current_state(TASK_RUNNING);
   return 0;
  }
  schedule();
 }
}
