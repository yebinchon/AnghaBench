
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; int irq_data; } ;
struct irq_data {int dummy; } ;


 int IRQCHIP_STATE_ACTIVE ;
 int __irq_get_irqchip_state (struct irq_data*,int ,int*) ;
 int cpu_relax () ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irqd_irq_inprogress (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __synchronize_hardirq(struct irq_desc *desc, bool sync_chip)
{
 struct irq_data *irqd = irq_desc_get_irq_data(desc);
 bool inprogress;

 do {
  unsigned long flags;





  while (irqd_irq_inprogress(&desc->irq_data))
   cpu_relax();


  raw_spin_lock_irqsave(&desc->lock, flags);
  inprogress = irqd_irq_inprogress(&desc->irq_data);






  if (!inprogress && sync_chip) {




   __irq_get_irqchip_state(irqd, IRQCHIP_STATE_ACTIVE,
      &inprogress);
  }
  raw_spin_unlock_irqrestore(&desc->lock, flags);


 } while (inprogress);
}
