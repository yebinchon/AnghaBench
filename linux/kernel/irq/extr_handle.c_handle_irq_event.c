
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; int lock; int istate; } ;
typedef int irqreturn_t ;


 int IRQD_IRQ_INPROGRESS ;
 int IRQS_PENDING ;
 int handle_irq_event_percpu (struct irq_desc*) ;
 int irqd_clear (int *,int ) ;
 int irqd_set (int *,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

irqreturn_t handle_irq_event(struct irq_desc *desc)
{
 irqreturn_t ret;

 desc->istate &= ~IRQS_PENDING;
 irqd_set(&desc->irq_data, IRQD_IRQ_INPROGRESS);
 raw_spin_unlock(&desc->lock);

 ret = handle_irq_event_percpu(desc);

 raw_spin_lock(&desc->lock);
 irqd_clear(&desc->irq_data, IRQD_IRQ_INPROGRESS);
 return ret;
}
