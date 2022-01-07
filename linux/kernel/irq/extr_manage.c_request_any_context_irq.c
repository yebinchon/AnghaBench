
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
typedef int irq_handler_t ;


 int EINVAL ;
 int ENOTCONN ;
 int IRQC_IS_HARDIRQ ;
 int IRQC_IS_NESTED ;
 unsigned int IRQ_NOTCONNECTED ;
 scalar_t__ irq_settings_is_nested_thread (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int request_irq (unsigned int,int ,unsigned long,char const*,void*) ;
 int request_threaded_irq (unsigned int,int *,int ,unsigned long,char const*,void*) ;

int request_any_context_irq(unsigned int irq, irq_handler_t handler,
       unsigned long flags, const char *name, void *dev_id)
{
 struct irq_desc *desc;
 int ret;

 if (irq == IRQ_NOTCONNECTED)
  return -ENOTCONN;

 desc = irq_to_desc(irq);
 if (!desc)
  return -EINVAL;

 if (irq_settings_is_nested_thread(desc)) {
  ret = request_threaded_irq(irq, ((void*)0), handler,
        flags, name, dev_id);
  return !ret ? IRQC_IS_NESTED : ret;
 }

 ret = request_irq(irq, handler, flags, name, dev_id);
 return !ret ? IRQC_IS_HARDIRQ : ret;
}
