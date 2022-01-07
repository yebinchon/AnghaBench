
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int flags; } ;
struct irq_desc {struct irqaction* action; } ;
typedef scalar_t__ irqreturn_t ;


 int IRQF_IRQPOLL ;
 scalar_t__ IRQ_NONE ;
 int barrier () ;
 int irqfixup ;

__attribute__((used)) static inline int
try_misrouted_irq(unsigned int irq, struct irq_desc *desc,
    irqreturn_t action_ret)
{
 struct irqaction *action;

 if (!irqfixup)
  return 0;


 if (action_ret == IRQ_NONE)
  return 1;






 if (irqfixup < 2)
  return 0;

 if (!irq)
  return 1;







 action = desc->action;
 barrier();
 return action && (action->flags & IRQF_IRQPOLL);
}
