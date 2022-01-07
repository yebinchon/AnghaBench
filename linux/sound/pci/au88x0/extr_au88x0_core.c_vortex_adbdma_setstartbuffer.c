
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int period_real; int period_virt; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_ADBDMA_START ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_adbdma_setstartbuffer(vortex_t * vortex, int adbdma, int sb)
{
 stream_t *dma = &vortex->dma_adb[adbdma];

 hwwrite(vortex->mmio, VORTEX_ADBDMA_START + (adbdma << 2),
  sb << ((0xf - (adbdma & 0xf)) * 2));
 dma->period_real = dma->period_virt = sb;
}
