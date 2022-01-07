
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_5__ {int dev; } ;


 unsigned char VORTEX_MIXER_CHNBASE ;
 int VORTEX_MIXER_RTBASE ;
 int VORTEX_MIXER_SR ;
 int dev_err (int ,char*) ;
 int hwread (int ,int) ;
 int hwwrite (int ,int,int) ;
 int vortex_mixer_en_sr (TYPE_2__*,unsigned char) ;

__attribute__((used)) static int
vortex_mixer_addWTD(vortex_t * vortex, unsigned char mix, unsigned char ch)
{
 int temp, lifeboat = 0, prev;

 temp = hwread(vortex->mmio, VORTEX_MIXER_SR);
 if ((temp & (1 << ch)) == 0) {
  hwwrite(vortex->mmio, VORTEX_MIXER_CHNBASE + (ch << 2), mix);
  vortex_mixer_en_sr(vortex, ch);
  return 1;
 }
 prev = VORTEX_MIXER_CHNBASE + (ch << 2);
 temp = hwread(vortex->mmio, prev);
 while (temp & 0x10) {
  prev = VORTEX_MIXER_RTBASE + ((temp & 0xf) << 2);
  temp = hwread(vortex->mmio, prev);

  if ((++lifeboat) > 0xf) {
   dev_err(vortex->card->dev,
    "vortex_mixer_addWTD: lifeboat overflow\n");
   return 0;
  }
 }
 hwwrite(vortex->mmio, VORTEX_MIXER_RTBASE + ((temp & 0xf) << 2), mix);
 hwwrite(vortex->mmio, prev, (temp & 0xf) | 0x10);
 return 1;
}
