
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpi_adapter {int (* interrupt_callback ) (struct hpi_adapter*) ;TYPE_1__* adapter; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* irq_query_and_clear ) (TYPE_1__*,int ) ;int index; int type; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int asihpi_irq_count ;
 int pr_err (char*,int ,int ) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (struct hpi_adapter*) ;

__attribute__((used)) static irqreturn_t asihpi_isr(int irq, void *dev_id)
{
 struct hpi_adapter *a = dev_id;
 int handled;

 if (!a->adapter->irq_query_and_clear) {
  pr_err("asihpi_isr ASI%04X:%d no handler\n", a->adapter->type,
   a->adapter->index);
  return IRQ_NONE;
 }

 handled = a->adapter->irq_query_and_clear(a->adapter, 0);

 if (!handled)
  return IRQ_NONE;

 asihpi_irq_count++;



 if (a->interrupt_callback)
  a->interrupt_callback(a);

 return IRQ_HANDLED;
}
