
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist_node {int dummy; } ;
struct pcpu_freelist {int dummy; } ;


 struct pcpu_freelist_node* __pcpu_freelist_pop (struct pcpu_freelist*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

struct pcpu_freelist_node *pcpu_freelist_pop(struct pcpu_freelist *s)
{
 struct pcpu_freelist_node *ret;
 unsigned long flags;

 local_irq_save(flags);
 ret = __pcpu_freelist_pop(s);
 local_irq_restore(flags);
 return ret;
}
