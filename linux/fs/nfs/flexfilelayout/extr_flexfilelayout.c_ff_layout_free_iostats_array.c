
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct nfs42_layoutstat_devinfo {TYPE_2__ ld_private; } ;
struct TYPE_3__ {int (* free ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ff_layout_free_iostats_array(struct nfs42_layoutstat_devinfo *devinfo,
  unsigned int num_entries)
{
 unsigned int i;

 for (i = 0; i < num_entries; i++) {
  if (!devinfo[i].ld_private.ops)
   continue;
  if (!devinfo[i].ld_private.ops->free)
   continue;
  devinfo[i].ld_private.ops->free(&devinfo[i].ld_private);
 }
}
