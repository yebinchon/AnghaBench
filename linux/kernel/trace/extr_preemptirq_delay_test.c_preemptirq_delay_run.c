
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int busy_wait (int ) ;
 int delay ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int strcmp (int ,char*) ;
 int test_mode ;

__attribute__((used)) static int preemptirq_delay_run(void *data)
{
 unsigned long flags;

 if (!strcmp(test_mode, "irq")) {
  local_irq_save(flags);
  busy_wait(delay);
  local_irq_restore(flags);
 } else if (!strcmp(test_mode, "preempt")) {
  preempt_disable();
  busy_wait(delay);
  preempt_enable();
 }

 return 0;
}
