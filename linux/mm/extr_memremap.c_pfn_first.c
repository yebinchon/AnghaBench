
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct dev_pagemap {TYPE_1__ res; } ;


 unsigned long PHYS_PFN (int ) ;
 int pgmap_altmap (struct dev_pagemap*) ;
 unsigned long vmem_altmap_offset (int ) ;

__attribute__((used)) static unsigned long pfn_first(struct dev_pagemap *pgmap)
{
 return PHYS_PFN(pgmap->res.start) +
  vmem_altmap_offset(pgmap_altmap(pgmap));
}
