
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int EN_SPDIF ;
 scalar_t__ VORTEX_CODEC_EN ;
 scalar_t__ VORTEX_SPDIF_CFG0 ;
 scalar_t__ VORTEX_SPDIF_CFG1 ;
 scalar_t__ VORTEX_SPDIF_FLAGS ;
 scalar_t__ VORTEX_SPDIF_SMPRATE ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;
 int vortex_src_setupchannel (TYPE_1__*,int,int,int ,int,int,int,int ,int,int) ;

__attribute__((used)) static void vortex_spdif_init(vortex_t * vortex, int spdif_sr, int spdif_mode)
{
 int i, this_38 = 0, this_04 = 0, this_08 = 0, this_0c = 0;


 hwwrite(vortex->mmio, VORTEX_SPDIF_FLAGS,
  hwread(vortex->mmio, VORTEX_SPDIF_FLAGS) & 0xfff3fffd);

 for (i = 0; i < 11; i++)
  hwwrite(vortex->mmio, VORTEX_SPDIF_CFG1 + (i << 2), 0);

 hwwrite(vortex->mmio, VORTEX_CODEC_EN,
  hwread(vortex->mmio, VORTEX_CODEC_EN) | EN_SPDIF);


 if (this_04 && this_08) {
  int edi;

  i = (((0x5DC00000 / spdif_sr) + 1) >> 1);
  if (i > 0x800) {
   if (i < 0x1ffff)
    edi = (i >> 1);
   else
    edi = 0x1ffff;
  } else {
   edi = 0x800;
  }

  vortex_src_setupchannel(vortex, this_04, edi, 0, 1,
     this_0c, 1, 0, edi, 1);
  vortex_src_setupchannel(vortex, this_08, edi, 0, 1,
     this_0c, 1, 0, edi, 1);
 }

 i = spdif_sr;
 spdif_sr |= 0x8c;
 switch (i) {
 case 32000:
  this_38 &= 0xFFFFFFFE;
  this_38 &= 0xFFFFFFFD;
  this_38 &= 0xF3FFFFFF;
  this_38 |= 0x03000000;
  this_38 &= 0xFFFFFF3F;
  spdif_sr &= 0xFFFFFFFD;
  spdif_sr |= 1;
  break;
 case 44100:
  this_38 &= 0xFFFFFFFE;
  this_38 &= 0xFFFFFFFD;
  this_38 &= 0xF0FFFFFF;
  this_38 |= 0x03000000;
  this_38 &= 0xFFFFFF3F;
  spdif_sr &= 0xFFFFFFFC;
  break;
 case 48000:
  if (spdif_mode == 1) {
   this_38 &= 0xFFFFFFFE;
   this_38 &= 0xFFFFFFFD;
   this_38 &= 0xF2FFFFFF;
   this_38 |= 0x02000000;
   this_38 &= 0xFFFFFF3F;
  } else {

   this_38 |= 0x00000003;
   this_38 &= 0xFFFFFFBF;
   this_38 |= 0x80;
  }
  spdif_sr |= 2;
  spdif_sr &= 0xFFFFFFFE;
  break;

 }



 hwwrite(vortex->mmio, VORTEX_SPDIF_CFG0, this_38 & 0xffff);
 hwwrite(vortex->mmio, VORTEX_SPDIF_CFG1, this_38 >> 0x10);
 hwwrite(vortex->mmio, VORTEX_SPDIF_SMPRATE, spdif_sr);
}
