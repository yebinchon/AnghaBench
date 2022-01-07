
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int alloc_start; unsigned int alloc_end; int global_available; int total_allocated; int maps; } ;
struct cpumap {int available; int allocated; int alloc_map; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int smp_processor_id () ;
 int test_and_set_bit (unsigned int,int ) ;
 struct cpumap* this_cpu_ptr (int ) ;
 int trace_irq_matrix_assign (unsigned int,int ,struct irq_matrix*,struct cpumap*) ;

void irq_matrix_assign(struct irq_matrix *m, unsigned int bit)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);

 if (WARN_ON_ONCE(bit < m->alloc_start || bit >= m->alloc_end))
  return;
 if (WARN_ON_ONCE(test_and_set_bit(bit, cm->alloc_map)))
  return;
 cm->allocated++;
 m->total_allocated++;
 cm->available--;
 m->global_available--;
 trace_irq_matrix_assign(bit, smp_processor_id(), m, cm);
}
