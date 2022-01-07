
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int VORTEX_MIXER_SR ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void vortex_mixer_dis_sr(vortex_t * vortex, int channel)
{
 hwwrite(vortex->mmio, VORTEX_MIXER_SR,
  hwread(vortex->mmio, VORTEX_MIXER_SR) & ~(0x1 << channel));
}
