
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {int maps; } ;
struct cpumap {unsigned int allocated; } ;


 struct cpumap* this_cpu_ptr (int ) ;

unsigned int irq_matrix_allocated(struct irq_matrix *m)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);

 return cm->allocated;
}
