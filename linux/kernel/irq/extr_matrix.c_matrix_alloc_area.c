
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int alloc_start; unsigned int alloc_end; int scratch_map; int system_map; } ;
struct cpumap {int alloc_map; int managed_map; } ;


 unsigned int bitmap_find_next_zero_area (int ,unsigned int,unsigned int,unsigned int,int ) ;
 int bitmap_or (int ,int ,int ,unsigned int) ;
 int bitmap_set (int ,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int matrix_alloc_area(struct irq_matrix *m, struct cpumap *cm,
          unsigned int num, bool managed)
{
 unsigned int area, start = m->alloc_start;
 unsigned int end = m->alloc_end;

 bitmap_or(m->scratch_map, cm->managed_map, m->system_map, end);
 bitmap_or(m->scratch_map, m->scratch_map, cm->alloc_map, end);
 area = bitmap_find_next_zero_area(m->scratch_map, end, start, num, 0);
 if (area >= end)
  return area;
 if (managed)
  bitmap_set(cm->managed_map, area, num);
 else
  bitmap_set(cm->alloc_map, area, num);
 return area;
}
