
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int global_available; int maps; } ;
struct cpumap {unsigned int available; } ;


 struct cpumap* this_cpu_ptr (int ) ;

unsigned int irq_matrix_available(struct irq_matrix *m, bool cpudown)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);

 if (!cpudown)
  return m->global_available;
 return m->global_available - cm->available;
}
