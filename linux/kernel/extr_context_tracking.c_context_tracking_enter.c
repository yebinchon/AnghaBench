
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int __context_tracking_enter (int) ;
 scalar_t__ in_interrupt () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void context_tracking_enter(enum ctx_state state)
{
 unsigned long flags;
 if (in_interrupt())
  return;

 local_irq_save(flags);
 __context_tracking_enter(state);
 local_irq_restore(flags);
}
