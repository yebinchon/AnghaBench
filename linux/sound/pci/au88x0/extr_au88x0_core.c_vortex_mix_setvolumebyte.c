
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 scalar_t__ VORTEX_MIX_VOL_A ;
 scalar_t__ VORTEX_MIX_VOL_B ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,unsigned char) ;

__attribute__((used)) static void
vortex_mix_setvolumebyte(vortex_t * vortex, unsigned char mix,
    unsigned char vol)
{
 int temp;
 hwwrite(vortex->mmio, VORTEX_MIX_VOL_A + (mix << 2), vol);
 if (1) {
  temp = hwread(vortex->mmio, VORTEX_MIX_VOL_B + (mix << 2));
  if ((temp != 0x80) || (vol == 0x80))
   return;
 }
 hwwrite(vortex->mmio, VORTEX_MIX_VOL_B + (mix << 2), vol);
}
