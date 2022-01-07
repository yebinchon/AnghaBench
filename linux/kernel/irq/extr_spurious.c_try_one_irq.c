
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int flags; } ;
struct irq_desc {int istate; int lock; struct irqaction* action; int irq_data; } ;
typedef scalar_t__ irqreturn_t ;


 int IRQF_SHARED ;
 int IRQS_PENDING ;
 int IRQS_POLL_INPROGRESS ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int __IRQF_TIMER ;
 scalar_t__ handle_irq_event (struct irq_desc*) ;
 scalar_t__ irq_settings_is_nested_thread (struct irq_desc*) ;
 scalar_t__ irq_settings_is_per_cpu (struct irq_desc*) ;
 scalar_t__ irq_settings_is_polled (struct irq_desc*) ;
 scalar_t__ irqd_irq_disabled (int *) ;
 scalar_t__ irqd_irq_inprogress (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int try_one_irq(struct irq_desc *desc, bool force)
{
 irqreturn_t ret = IRQ_NONE;
 struct irqaction *action;

 raw_spin_lock(&desc->lock);





 if (irq_settings_is_per_cpu(desc) ||
     irq_settings_is_nested_thread(desc) ||
     irq_settings_is_polled(desc))
  goto out;





 if (irqd_irq_disabled(&desc->irq_data) && !force)
  goto out;





 action = desc->action;
 if (!action || !(action->flags & IRQF_SHARED) ||
     (action->flags & __IRQF_TIMER))
  goto out;


 if (irqd_irq_inprogress(&desc->irq_data)) {




  desc->istate |= IRQS_PENDING;
  goto out;
 }


 desc->istate |= IRQS_POLL_INPROGRESS;
 do {
  if (handle_irq_event(desc) == IRQ_HANDLED)
   ret = IRQ_HANDLED;

  action = desc->action;
 } while ((desc->istate & IRQS_PENDING) && action);
 desc->istate &= ~IRQS_POLL_INPROGRESS;
out:
 raw_spin_unlock(&desc->lock);
 return ret == IRQ_HANDLED;
}
