
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* card; int mmio; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ VORTEX_SRC_CONVRATIO ;
 int dev_err (int ,char*) ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static int
vortex_src_persist_convratio(vortex_t * vortex, unsigned char src, int ratio)
{
 int temp, lifeboat = 0;

 do {
  hwwrite(vortex->mmio, VORTEX_SRC_CONVRATIO + (src << 2), ratio);
  temp = hwread(vortex->mmio, VORTEX_SRC_CONVRATIO + (src << 2));
  if ((++lifeboat) > 0x9) {
   dev_err(vortex->card->dev, "Src cvr fail\n");
   break;
  }
 }
 while (temp != ratio);
 return temp;
}
