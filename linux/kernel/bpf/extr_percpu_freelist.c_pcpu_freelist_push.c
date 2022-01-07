
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist_node {int dummy; } ;
struct pcpu_freelist {int dummy; } ;


 int __pcpu_freelist_push (struct pcpu_freelist*,struct pcpu_freelist_node*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void pcpu_freelist_push(struct pcpu_freelist *s,
   struct pcpu_freelist_node *node)
{
 unsigned long flags;

 local_irq_save(flags);
 __pcpu_freelist_push(s, node);
 local_irq_restore(flags);
}
