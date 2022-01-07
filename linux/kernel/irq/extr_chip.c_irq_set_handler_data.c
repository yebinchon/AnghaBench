
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* handler_data; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;


 int EINVAL ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;

int irq_set_handler_data(unsigned int irq, void *data)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, 0);

 if (!desc)
  return -EINVAL;
 desc->irq_common_data.handler_data = data;
 irq_put_desc_unlock(desc, flags);
 return 0;
}
