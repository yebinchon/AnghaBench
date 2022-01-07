
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_pagemap {int ref; int done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cleanup ) (struct dev_pagemap*) ;int (* kill ) (struct dev_pagemap*) ;} ;


 int WARN_ON (int) ;
 int percpu_ref_exit (int ) ;
 int percpu_ref_kill (int ) ;
 int stub1 (struct dev_pagemap*) ;
 int stub2 (struct dev_pagemap*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void nfit_test_kill(void *_pgmap)
{
 struct dev_pagemap *pgmap = _pgmap;

 WARN_ON(!pgmap || !pgmap->ref);

 if (pgmap->ops && pgmap->ops->kill)
  pgmap->ops->kill(pgmap);
 else
  percpu_ref_kill(pgmap->ref);

 if (pgmap->ops && pgmap->ops->cleanup) {
  pgmap->ops->cleanup(pgmap);
 } else {
  wait_for_completion(&pgmap->done);
  percpu_ref_exit(pgmap->ref);
 }
}
