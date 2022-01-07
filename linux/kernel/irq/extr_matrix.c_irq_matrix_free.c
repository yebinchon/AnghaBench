
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int alloc_start; unsigned int alloc_end; int global_available; int total_allocated; int maps; } ;
struct cpumap {scalar_t__ online; int available; int managed_allocated; int allocated; int alloc_map; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int clear_bit (unsigned int,int ) ;
 struct cpumap* per_cpu_ptr (int ,unsigned int) ;
 int trace_irq_matrix_free (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ;

void irq_matrix_free(struct irq_matrix *m, unsigned int cpu,
       unsigned int bit, bool managed)
{
 struct cpumap *cm = per_cpu_ptr(m->maps, cpu);

 if (WARN_ON_ONCE(bit < m->alloc_start || bit >= m->alloc_end))
  return;

 clear_bit(bit, cm->alloc_map);
 cm->allocated--;
 if(managed)
  cm->managed_allocated--;

 if (cm->online)
  m->total_allocated--;

 if (!managed) {
  cm->available++;
  if (cm->online)
   m->global_available++;
 }
 trace_irq_matrix_free(bit, cpu, m, cm);
}
