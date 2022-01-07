
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; int depth; } ;


 unsigned long IRQD_LEVEL ;
 unsigned long IRQD_MOVE_PCNTXT ;
 unsigned long IRQD_NO_BALANCING ;
 unsigned long IRQD_PER_CPU ;
 unsigned long IRQD_TRIGGER_MASK ;
 unsigned long IRQ_TYPE_NONE ;
 int WARN_ON_ONCE (int) ;
 unsigned long _IRQ_NOAUTOEN ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 scalar_t__ irq_settings_can_move_pcntxt (struct irq_desc*) ;
 int irq_settings_clr_and_set (struct irq_desc*,unsigned long,unsigned long) ;
 unsigned long irq_settings_get_trigger_mask (struct irq_desc*) ;
 scalar_t__ irq_settings_has_no_balance_set (struct irq_desc*) ;
 scalar_t__ irq_settings_is_level (struct irq_desc*) ;
 scalar_t__ irq_settings_is_per_cpu (struct irq_desc*) ;
 int irqd_clear (int *,unsigned long) ;
 unsigned long irqd_get_trigger_type (int *) ;
 int irqd_set (int *,unsigned long) ;

void irq_modify_status(unsigned int irq, unsigned long clr, unsigned long set)
{
 unsigned long flags, trigger, tmp;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, 0);

 if (!desc)
  return;





 WARN_ON_ONCE(!desc->depth && (set & _IRQ_NOAUTOEN));

 irq_settings_clr_and_set(desc, clr, set);

 trigger = irqd_get_trigger_type(&desc->irq_data);

 irqd_clear(&desc->irq_data, IRQD_NO_BALANCING | IRQD_PER_CPU |
     IRQD_TRIGGER_MASK | IRQD_LEVEL | IRQD_MOVE_PCNTXT);
 if (irq_settings_has_no_balance_set(desc))
  irqd_set(&desc->irq_data, IRQD_NO_BALANCING);
 if (irq_settings_is_per_cpu(desc))
  irqd_set(&desc->irq_data, IRQD_PER_CPU);
 if (irq_settings_can_move_pcntxt(desc))
  irqd_set(&desc->irq_data, IRQD_MOVE_PCNTXT);
 if (irq_settings_is_level(desc))
  irqd_set(&desc->irq_data, IRQD_LEVEL);

 tmp = irq_settings_get_trigger_mask(desc);
 if (tmp != IRQ_TYPE_NONE)
  trigger = tmp;

 irqd_set(&desc->irq_data, trigger);

 irq_put_desc_unlock(desc, flags);
}
