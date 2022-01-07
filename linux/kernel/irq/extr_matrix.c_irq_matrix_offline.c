
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {int online_maps; int global_available; int maps; } ;
struct cpumap {int online; scalar_t__ available; } ;


 struct cpumap* this_cpu_ptr (int ) ;
 int trace_irq_matrix_offline (struct irq_matrix*) ;

void irq_matrix_offline(struct irq_matrix *m)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);


 m->global_available -= cm->available;
 cm->online = 0;
 m->online_maps--;
 trace_irq_matrix_offline(m);
}
