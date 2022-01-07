
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; scalar_t__ depth; int lock; } ;


 int IRQS_NMI ;
 scalar_t__ WARN_ON (int) ;
 void* __cleanup_nmi (unsigned int,struct irq_desc*) ;
 int disable_nmi_nosync (unsigned int) ;
 int irq_nmi_teardown (struct irq_desc*) ;
 int irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

const void *free_nmi(unsigned int irq, void *dev_id)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;
 const void *devname;

 if (!desc || WARN_ON(!(desc->istate & IRQS_NMI)))
  return ((void*)0);

 if (WARN_ON(irq_settings_is_per_cpu_devid(desc)))
  return ((void*)0);


 if (WARN_ON(desc->depth == 0))
  disable_nmi_nosync(irq);

 raw_spin_lock_irqsave(&desc->lock, flags);

 irq_nmi_teardown(desc);
 devname = __cleanup_nmi(irq, desc);

 raw_spin_unlock_irqrestore(&desc->lock, flags);

 return devname;
}
