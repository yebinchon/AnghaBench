
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_pagemap {int ref; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* kill ) (struct dev_pagemap*) ;} ;


 int percpu_ref_kill (int ) ;
 int stub1 (struct dev_pagemap*) ;

__attribute__((used)) static void dev_pagemap_kill(struct dev_pagemap *pgmap)
{
 if (pgmap->ops && pgmap->ops->kill)
  pgmap->ops->kill(pgmap);
 else
  percpu_ref_kill(pgmap->ref);
}
