
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int percpu_affinity; int percpu_enabled; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;
 int cpumask_copy (struct cpumask*,int ) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int irq_get_percpu_devid_partition(unsigned int irq, struct cpumask *affinity)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (!desc || !desc->percpu_enabled)
  return -EINVAL;

 if (affinity)
  cpumask_copy(affinity, desc->percpu_affinity);

 return 0;
}
