
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int EN_CODEC ;
 scalar_t__ VORTEX_CODEC_CHN ;
 scalar_t__ VORTEX_CODEC_CTRL ;
 scalar_t__ VORTEX_CODEC_EN ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;
 int msleep (int) ;

__attribute__((used)) static void vortex_codec_init(vortex_t * vortex)
{
 int i;

 for (i = 0; i < 32; i++) {

  hwwrite(vortex->mmio, (VORTEX_CODEC_CHN + (i << 2)), -i);
  msleep(2);
 }
 if (0) {
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x8068);
  msleep(1);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x00e8);
  msleep(1);
 } else {
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x00a8);
  msleep(2);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x80a8);
  msleep(2);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x80e8);
  msleep(2);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x80a8);
  msleep(2);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x00a8);
  msleep(2);
  hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0x00e8);
 }
 for (i = 0; i < 32; i++) {
  hwwrite(vortex->mmio, (VORTEX_CODEC_CHN + (i << 2)), -i);
  msleep(5);
 }
 hwwrite(vortex->mmio, VORTEX_CODEC_CTRL, 0xe8);
 msleep(1);

 hwwrite(vortex->mmio, VORTEX_CODEC_EN,
  hwread(vortex->mmio, VORTEX_CODEC_EN) | EN_CODEC);
}
