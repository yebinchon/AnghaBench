
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct dev_pagemap {int ref; TYPE_1__ res; } ;
typedef scalar_t__ resource_size_t ;


 scalar_t__ PFN_PHYS (unsigned long) ;
 int PHYS_PFN (scalar_t__) ;
 int percpu_ref_tryget_live (int ) ;
 int pgmap_array ;
 int put_dev_pagemap (struct dev_pagemap*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dev_pagemap* xa_load (int *,int ) ;

struct dev_pagemap *get_dev_pagemap(unsigned long pfn,
  struct dev_pagemap *pgmap)
{
 resource_size_t phys = PFN_PHYS(pfn);




 if (pgmap) {
  if (phys >= pgmap->res.start && phys <= pgmap->res.end)
   return pgmap;
  put_dev_pagemap(pgmap);
 }


 rcu_read_lock();
 pgmap = xa_load(&pgmap_array, PHYS_PFN(phys));
 if (pgmap && !percpu_ref_tryget_live(pgmap->ref))
  pgmap = ((void*)0);
 rcu_read_unlock();

 return pgmap;
}
