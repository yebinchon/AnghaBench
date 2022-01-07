
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;


 int IRQ_GET_DESC_CHECK_PERCPU ;
 unsigned int IRQ_TYPE_NONE ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int WARN (int,char*,unsigned int) ;
 int __irq_set_trigger (struct irq_desc*,unsigned int) ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_percpu_enable (struct irq_desc*,unsigned int) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 unsigned int irqd_get_trigger_type (int *) ;
 unsigned int smp_processor_id () ;

void enable_percpu_irq(unsigned int irq, unsigned int type)
{
 unsigned int cpu = smp_processor_id();
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);

 if (!desc)
  return;





 type &= IRQ_TYPE_SENSE_MASK;
 if (type == IRQ_TYPE_NONE)
  type = irqd_get_trigger_type(&desc->irq_data);

 if (type != IRQ_TYPE_NONE) {
  int ret;

  ret = __irq_set_trigger(desc, type);

  if (ret) {
   WARN(1, "failed to set type for IRQ%d\n", irq);
   goto out;
  }
 }

 irq_percpu_enable(desc, cpu);
out:
 irq_put_desc_unlock(desc, flags);
}
