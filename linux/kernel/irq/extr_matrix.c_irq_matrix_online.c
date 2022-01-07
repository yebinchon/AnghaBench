
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {int online_maps; int global_available; scalar_t__ systembits_inalloc; scalar_t__ alloc_size; int maps; } ;
struct cpumap {int online; int initialized; scalar_t__ available; scalar_t__ managed; } ;


 int BUG_ON (int) ;
 struct cpumap* this_cpu_ptr (int ) ;
 int trace_irq_matrix_online (struct irq_matrix*) ;

void irq_matrix_online(struct irq_matrix *m)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);

 BUG_ON(cm->online);

 if (!cm->initialized) {
  cm->available = m->alloc_size;
  cm->available -= cm->managed + m->systembits_inalloc;
  cm->initialized = 1;
 }
 m->global_available += cm->available;
 cm->online = 1;
 m->online_maps++;
 trace_irq_matrix_online(m);
}
