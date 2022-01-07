
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int threads_active; } ;


 int __synchronize_hardirq (struct irq_desc*,int) ;
 int atomic_read (int *) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

bool synchronize_hardirq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (desc) {
  __synchronize_hardirq(desc, 0);
  return !atomic_read(&desc->threads_active);
 }

 return 1;
}
