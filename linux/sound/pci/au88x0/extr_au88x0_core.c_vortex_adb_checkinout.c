
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int* fixed_res; TYPE_2__* card; TYPE_1__* dma_adb; } ;
typedef TYPE_3__ vortex_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int* resources; } ;


 char EINVAL ;
 char ENOMEM ;
 int NR_ADB ;
 int dev_err (int ,char*,int) ;
 int* resnum ;

__attribute__((used)) static char
vortex_adb_checkinout(vortex_t * vortex, int resmap[], int out, int restype)
{
 int i, qty = resnum[restype], resinuse = 0;

 if (out) {

  for (i = 0; i < NR_ADB; i++) {
   resinuse |= vortex->dma_adb[i].resources[restype];
  }
  resinuse |= vortex->fixed_res[restype];

  for (i = 0; i < qty; i++) {
   if ((resinuse & (1 << i)) == 0) {
    if (resmap != ((void*)0))
     resmap[restype] |= (1 << i);
    else
     vortex->dma_adb[i].resources[restype] |= (1 << i);





    return i;
   }
  }
 } else {
  if (resmap == ((void*)0))
   return -EINVAL;

  for (i = 0; i < qty; i++) {
   if (resmap[restype] & (1 << i)) {
    resmap[restype] &= ~(1 << i);





    return i;
   }
  }
 }
 dev_err(vortex->card->dev,
  "FATAL: ResManager: resource type %d exhausted.\n",
  restype);
 return -ENOMEM;
}
