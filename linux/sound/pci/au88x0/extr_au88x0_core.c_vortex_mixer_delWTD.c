
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
 unsigned char VORTEX_MIXER_RTBASE ;
 int VORTEX_MIXER_SR ;
 int dev_err (int ,char*,...) ;
 int hwread (int ,int) ;
 int hwwrite (int ,int,int) ;
 int vortex_mixer_dis_sr (TYPE_2__*,unsigned char) ;

__attribute__((used)) static int
vortex_mixer_delWTD(vortex_t * vortex, unsigned char mix, unsigned char ch)
{
 int esp14 = -1, esp18, eax, ebx, edx, ebp, esi = 0;


 eax = hwread(vortex->mmio, VORTEX_MIXER_SR);
 if (((1 << ch) & eax) == 0) {
  dev_err(vortex->card->dev, "mix ALARM %x\n", eax);
  return 0;
 }
 ebp = VORTEX_MIXER_CHNBASE + (ch << 2);
 esp18 = hwread(vortex->mmio, ebp);
 if (esp18 & 0x10) {
  ebx = (esp18 & 0xf);
  if (mix == ebx) {
   ebx = VORTEX_MIXER_RTBASE + (mix << 2);
   edx = hwread(vortex->mmio, ebx);

   hwwrite(vortex->mmio, ebp, edx);
   hwwrite(vortex->mmio, ebx, 0);
  } else {

   edx =
       hwread(vortex->mmio,
       VORTEX_MIXER_RTBASE + (ebx << 2));

   while ((edx & 0xf) != mix) {
    if ((esi) > 0xf) {
     dev_err(vortex->card->dev,
      "mixdelWTD: error lifeboat overflow\n");
     return 0;
    }
    esp14 = ebx;
    ebx = edx & 0xf;
    ebp = ebx << 2;
    edx =
        hwread(vortex->mmio,
        VORTEX_MIXER_RTBASE + ebp);

    esi++;
   }

   ebp = ebx << 2;
   if (edx & 0x10) {
    ebx = VORTEX_MIXER_RTBASE + ((edx & 0xf) << 2);
    edx = hwread(vortex->mmio, ebx);

    hwwrite(vortex->mmio,
     VORTEX_MIXER_RTBASE + ebp, edx);
    hwwrite(vortex->mmio, ebx, 0);

   } else {

    if (esp14 == -1)
     hwwrite(vortex->mmio,
      VORTEX_MIXER_CHNBASE +
      (ch << 2), esp18 & 0xef);
    else {
     ebx = (0xffffffe0 & edx) | (0xf & ebx);
     hwwrite(vortex->mmio,
      VORTEX_MIXER_RTBASE +
      (esp14 << 2), ebx);

    }
    hwwrite(vortex->mmio,
     VORTEX_MIXER_RTBASE + ebp, 0);
    return 1;
   }
  }
 } else {


  vortex_mixer_dis_sr(vortex, ch);
  hwwrite(vortex->mmio, ebp, 0);
 }
 return 1;
}
