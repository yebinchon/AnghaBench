
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmem_altmap {unsigned long reserve; unsigned long free; } ;



unsigned long vmem_altmap_offset(struct vmem_altmap *altmap)
{

 if (altmap)
  return altmap->reserve + altmap->free;
 return 0;
}
