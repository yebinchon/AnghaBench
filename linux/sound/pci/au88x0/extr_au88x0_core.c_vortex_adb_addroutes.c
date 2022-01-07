
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
 int ROUTE_MASK ;
 scalar_t__ VORTEX_ADB_CHNBASE ;
 scalar_t__ VORTEX_ADB_RTBASE ;
 int dev_err (int ,char*,int) ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;
 int vortex_adb_en_sr (TYPE_2__*,unsigned char) ;

__attribute__((used)) static void
vortex_adb_addroutes(vortex_t * vortex, unsigned char channel,
       ADBRamLink * route, int rnum)
{
 int temp, prev, lifeboat = 0;

 if ((rnum <= 0) || (route == ((void*)0)))
  return;

 rnum--;
 hwwrite(vortex->mmio,
  VORTEX_ADB_RTBASE + ((route[rnum] & ADB_MASK) << 2),
  ROUTE_MASK);
 while (rnum > 0) {
  hwwrite(vortex->mmio,
   VORTEX_ADB_RTBASE +
   ((route[rnum - 1] & ADB_MASK) << 2), route[rnum]);
  rnum--;
 }

 temp =
     hwread(vortex->mmio,
     VORTEX_ADB_CHNBASE + (channel << 2)) & ADB_MASK;
 if (temp == ADB_MASK) {

  hwwrite(vortex->mmio, VORTEX_ADB_CHNBASE + (channel << 2),
   route[0]);
  vortex_adb_en_sr(vortex, channel);
  return;
 }

 do {
  prev = temp;
  temp =
      hwread(vortex->mmio,
      VORTEX_ADB_RTBASE + (temp << 2)) & ADB_MASK;
  if ((lifeboat++) > ADB_MASK) {
   dev_err(vortex->card->dev,
    "vortex_adb_addroutes: unending route! 0x%x\n",
    *route);
   return;
  }
 }
 while (temp != ADB_MASK);
 hwwrite(vortex->mmio, VORTEX_ADB_RTBASE + (prev << 2), route[0]);
}
