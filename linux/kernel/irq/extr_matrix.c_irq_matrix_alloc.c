
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int alloc_end; int global_reserved; int global_available; int total_allocated; int maps; } ;
struct cpumask {int dummy; } ;
struct cpumap {int available; int allocated; } ;


 int ENOSPC ;
 unsigned int UINT_MAX ;
 unsigned int matrix_alloc_area (struct irq_matrix*,struct cpumap*,int,int) ;
 unsigned int matrix_find_best_cpu (struct irq_matrix*,struct cpumask const*) ;
 struct cpumap* per_cpu_ptr (int ,unsigned int) ;
 int trace_irq_matrix_alloc (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ;

int irq_matrix_alloc(struct irq_matrix *m, const struct cpumask *msk,
       bool reserved, unsigned int *mapped_cpu)
{
 unsigned int cpu, bit;
 struct cpumap *cm;

 cpu = matrix_find_best_cpu(m, msk);
 if (cpu == UINT_MAX)
  return -ENOSPC;

 cm = per_cpu_ptr(m->maps, cpu);
 bit = matrix_alloc_area(m, cm, 1, 0);
 if (bit >= m->alloc_end)
  return -ENOSPC;
 cm->allocated++;
 cm->available--;
 m->total_allocated++;
 m->global_available--;
 if (reserved)
  m->global_reserved--;
 *mapped_cpu = cpu;
 trace_irq_matrix_alloc(bit, cpu, m, cm);
 return bit;

}
