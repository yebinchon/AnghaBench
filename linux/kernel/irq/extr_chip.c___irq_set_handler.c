
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
typedef int irq_flow_handler_t ;


 int __irq_do_set_handler (struct irq_desc*,int ,int,char const*) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;

void
__irq_set_handler(unsigned int irq, irq_flow_handler_t handle, int is_chained,
    const char *name)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, 0);

 if (!desc)
  return;

 __irq_do_set_handler(desc, handle, is_chained, name);
 irq_put_desc_busunlock(desc, flags);
}
