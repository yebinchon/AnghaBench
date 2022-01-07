
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int alloc_end; int total_allocated; int scratch_map; int maps; } ;
struct cpumask {int dummy; } ;
struct cpumap {int managed_allocated; int allocated; int alloc_map; int managed_map; } ;


 int EINVAL ;
 int ENOSPC ;
 unsigned int UINT_MAX ;
 int bitmap_andnot (int ,int ,int ,unsigned int) ;
 scalar_t__ cpumask_empty (struct cpumask const*) ;
 unsigned int find_first_bit (int ,unsigned int) ;
 unsigned int matrix_find_best_cpu_managed (struct irq_matrix*,struct cpumask const*) ;
 struct cpumap* per_cpu_ptr (int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int trace_irq_matrix_alloc_managed (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ;

int irq_matrix_alloc_managed(struct irq_matrix *m, const struct cpumask *msk,
        unsigned int *mapped_cpu)
{
 unsigned int bit, cpu, end = m->alloc_end;
 struct cpumap *cm;

 if (cpumask_empty(msk))
  return -EINVAL;

 cpu = matrix_find_best_cpu_managed(m, msk);
 if (cpu == UINT_MAX)
  return -ENOSPC;

 cm = per_cpu_ptr(m->maps, cpu);
 end = m->alloc_end;

 bitmap_andnot(m->scratch_map, cm->managed_map, cm->alloc_map, end);
 bit = find_first_bit(m->scratch_map, end);
 if (bit >= end)
  return -ENOSPC;
 set_bit(bit, cm->alloc_map);
 cm->allocated++;
 cm->managed_allocated++;
 m->total_allocated++;
 *mapped_cpu = cpu;
 trace_irq_matrix_alloc_managed(bit, cpu, m, cm);
 return bit;
}
