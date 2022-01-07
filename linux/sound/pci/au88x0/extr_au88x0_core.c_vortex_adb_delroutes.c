
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_5__ {int dev; } ;
typedef int ADBRamLink ;


 int ADB_MASK ;
 scalar_t__ VORTEX_ADB_CHNBASE ;
 scalar_t__ VORTEX_ADB_RTBASE ;
 int dev_err (int ,char*,int) ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;
 int vortex_adb_dis_sr (TYPE_2__*,unsigned char) ;

__attribute__((used)) static void
vortex_adb_delroutes(vortex_t * vortex, unsigned char channel,
       ADBRamLink route0, ADBRamLink route1)
{
 int temp, lifeboat = 0, prev;


 temp =
     hwread(vortex->mmio,
     VORTEX_ADB_CHNBASE + (channel << 2)) & ADB_MASK;
 if (temp == (route0 & ADB_MASK)) {
  temp =
      hwread(vortex->mmio,
      VORTEX_ADB_RTBASE + ((route1 & ADB_MASK) << 2));
  if ((temp & ADB_MASK) == ADB_MASK)
   vortex_adb_dis_sr(vortex, channel);
  hwwrite(vortex->mmio, VORTEX_ADB_CHNBASE + (channel << 2),
   temp);
  return;
 }
 do {
  prev = temp;
  temp =
      hwread(vortex->mmio,
      VORTEX_ADB_RTBASE + (prev << 2)) & ADB_MASK;
  if (((lifeboat++) > ADB_MASK) || (temp == ADB_MASK)) {
   dev_err(vortex->card->dev,
    "vortex_adb_delroutes: route not found! 0x%x\n",
    route0);
   return;
  }
 }
 while (temp != (route0 & ADB_MASK));
 temp = hwread(vortex->mmio, VORTEX_ADB_RTBASE + (temp << 2));
 if ((temp & ADB_MASK) == route1)
  temp = hwread(vortex->mmio, VORTEX_ADB_RTBASE + (temp << 2));

 hwwrite(vortex->mmio, VORTEX_ADB_RTBASE + (prev << 2), temp);
}
