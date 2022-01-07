
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* handler_data; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;
typedef int irq_flow_handler_t ;


 int __irq_do_set_handler (struct irq_desc*,int ,int,int *) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;

void
irq_set_chained_handler_and_data(unsigned int irq, irq_flow_handler_t handle,
     void *data)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, 0);

 if (!desc)
  return;

 desc->irq_common_data.handler_data = data;
 __irq_do_set_handler(desc, handle, 1, ((void*)0));

 irq_put_desc_busunlock(desc, flags);
}
