
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmem_altmap {unsigned long alloc; } ;



void vmem_altmap_free(struct vmem_altmap *altmap, unsigned long nr_pfns)
{
 altmap->alloc -= nr_pfns;
}
