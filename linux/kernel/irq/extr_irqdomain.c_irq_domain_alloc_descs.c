
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_affinity_desc {int dummy; } ;
typedef unsigned int irq_hw_number_t ;


 int THIS_MODULE ;
 int __irq_alloc_descs (int,int,unsigned int,int,int ,struct irq_affinity_desc const*) ;
 unsigned int nr_irqs ;

int irq_domain_alloc_descs(int virq, unsigned int cnt, irq_hw_number_t hwirq,
      int node, const struct irq_affinity_desc *affinity)
{
 unsigned int hint;

 if (virq >= 0) {
  virq = __irq_alloc_descs(virq, virq, cnt, node, THIS_MODULE,
      affinity);
 } else {
  hint = hwirq % nr_irqs;
  if (hint == 0)
   hint++;
  virq = __irq_alloc_descs(-1, hint, cnt, node, THIS_MODULE,
      affinity);
  if (virq <= 0 && hint > 1) {
   virq = __irq_alloc_descs(-1, 1, cnt, node, THIS_MODULE,
       affinity);
  }
 }

 return virq;
}
