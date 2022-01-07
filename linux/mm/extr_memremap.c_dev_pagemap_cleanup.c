
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_pagemap {int * ref; int internal_ref; int done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cleanup ) (struct dev_pagemap*) ;} ;


 int percpu_ref_exit (int *) ;
 int stub1 (struct dev_pagemap*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void dev_pagemap_cleanup(struct dev_pagemap *pgmap)
{
 if (pgmap->ops && pgmap->ops->cleanup) {
  pgmap->ops->cleanup(pgmap);
 } else {
  wait_for_completion(&pgmap->done);
  percpu_ref_exit(pgmap->ref);
 }




 if (pgmap->ref == &pgmap->internal_ref)
  pgmap->ref = ((void*)0);
}
