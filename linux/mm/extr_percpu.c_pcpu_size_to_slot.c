
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pcpu_size_to_slot (int) ;
 int pcpu_nr_slots ;
 int pcpu_unit_size ;

__attribute__((used)) static int pcpu_size_to_slot(int size)
{
 if (size == pcpu_unit_size)
  return pcpu_nr_slots - 1;
 return __pcpu_size_to_slot(size);
}
