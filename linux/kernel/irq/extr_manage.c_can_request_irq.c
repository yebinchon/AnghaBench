
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* action; } ;
struct TYPE_2__ {unsigned long flags; } ;


 unsigned long IRQF_SHARED ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 scalar_t__ irq_settings_can_request (struct irq_desc*) ;

int can_request_irq(unsigned int irq, unsigned long irqflags)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, 0);
 int canrequest = 0;

 if (!desc)
  return 0;

 if (irq_settings_can_request(desc)) {
  if (!desc->action ||
      irqflags & desc->action->flags & IRQF_SHARED)
   canrequest = 1;
 }
 irq_put_desc_unlock(desc, flags);
 return canrequest;
}
