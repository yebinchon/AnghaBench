
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_5__ {int dev; } ;


 int VORTEX_SRCBLOCK_SR ;
 unsigned char VORTEX_SRC_CHNBASE ;
 unsigned char VORTEX_SRC_RTBASE ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int hwread (int ,int) ;
 int hwwrite (int ,int,int) ;
 int vortex_src_dis_sr (TYPE_2__*,unsigned char) ;

__attribute__((used)) static int
vortex_src_delWTD(vortex_t * vortex, unsigned char src, unsigned char ch)
{
 int esp14 = -1, esp18, eax, ebx, edx, ebp, esi = 0;


 eax = hwread(vortex->mmio, VORTEX_SRCBLOCK_SR);
 if (((1 << ch) & eax) == 0) {
  dev_err(vortex->card->dev, "src alarm\n");
  return 0;
 }
 ebp = VORTEX_SRC_CHNBASE + (ch << 2);
 esp18 = hwread(vortex->mmio, ebp);
 if (esp18 & 0x10) {
  ebx = (esp18 & 0xf);
  if (src == ebx) {
   ebx = VORTEX_SRC_RTBASE + (src << 2);
   edx = hwread(vortex->mmio, ebx);

   hwwrite(vortex->mmio, ebp, edx);
   hwwrite(vortex->mmio, ebx, 0);
  } else {

   edx =
       hwread(vortex->mmio,
       VORTEX_SRC_RTBASE + (ebx << 2));

   while ((edx & 0xf) != src) {
    if ((esi) > 0xf) {
     dev_warn(vortex->card->dev,
       "srcdelWTD: error, lifeboat overflow\n");
     return 0;
    }
    esp14 = ebx;
    ebx = edx & 0xf;
    ebp = ebx << 2;
    edx =
        hwread(vortex->mmio,
        VORTEX_SRC_RTBASE + ebp);

    esi++;
   }

   ebp = ebx << 2;
   if (edx & 0x10) {
    ebx = VORTEX_SRC_RTBASE + ((edx & 0xf) << 2);
    edx = hwread(vortex->mmio, ebx);

    hwwrite(vortex->mmio,
     VORTEX_SRC_RTBASE + ebp, edx);
    hwwrite(vortex->mmio, ebx, 0);

   } else {

    if (esp14 == -1)
     hwwrite(vortex->mmio,
      VORTEX_SRC_CHNBASE +
      (ch << 2), esp18 & 0xef);
    else {
     ebx = (0xffffffe0 & edx) | (0xf & ebx);
     hwwrite(vortex->mmio,
      VORTEX_SRC_RTBASE +
      (esp14 << 2), ebx);

    }
    hwwrite(vortex->mmio,
     VORTEX_SRC_RTBASE + ebp, 0);
    return 1;
   }
  }
 } else {

  vortex_src_dis_sr(vortex, ch);
  hwwrite(vortex->mmio, ebp, 0);
 }
 return 1;
}
