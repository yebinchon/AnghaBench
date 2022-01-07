
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {int percpu_enabled; TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_unmask ) (TYPE_2__*) ;int (* irq_enable ) (TYPE_2__*) ;} ;


 int cpumask_set_cpu (unsigned int,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

void irq_percpu_enable(struct irq_desc *desc, unsigned int cpu)
{
 if (desc->irq_data.chip->irq_enable)
  desc->irq_data.chip->irq_enable(&desc->irq_data);
 else
  desc->irq_data.chip->irq_unmask(&desc->irq_data);
 cpumask_set_cpu(cpu, desc->percpu_enabled);
}
