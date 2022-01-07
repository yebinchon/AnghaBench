
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int matrix_bits; int online_maps; unsigned int alloc_start; unsigned int alloc_end; int systembits_inalloc; int total_allocated; int system_map; int maps; } ;
struct cpumap {int allocated; int alloc_map; } ;


 int BUG_ON (int) ;
 int set_bit (unsigned int,int ) ;
 int test_and_clear_bit (unsigned int,int ) ;
 struct cpumap* this_cpu_ptr (int ) ;
 int trace_irq_matrix_assign_system (unsigned int,struct irq_matrix*) ;

void irq_matrix_assign_system(struct irq_matrix *m, unsigned int bit,
         bool replace)
{
 struct cpumap *cm = this_cpu_ptr(m->maps);

 BUG_ON(bit > m->matrix_bits);
 BUG_ON(m->online_maps > 1 || (m->online_maps && !replace));

 set_bit(bit, m->system_map);
 if (replace) {
  BUG_ON(!test_and_clear_bit(bit, cm->alloc_map));
  cm->allocated--;
  m->total_allocated--;
 }
 if (bit >= m->alloc_start && bit < m->alloc_end)
  m->systembits_inalloc++;

 trace_irq_matrix_assign_system(bit, m);
}
