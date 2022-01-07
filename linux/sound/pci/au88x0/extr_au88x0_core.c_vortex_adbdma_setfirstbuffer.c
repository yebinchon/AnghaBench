
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int dma_ctrl; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_ADBDMA_CTRL ;
 int hwwrite (int ,scalar_t__,int ) ;

__attribute__((used)) static void vortex_adbdma_setfirstbuffer(vortex_t * vortex, int adbdma)
{
 stream_t *dma = &vortex->dma_adb[adbdma];

 hwwrite(vortex->mmio, VORTEX_ADBDMA_CTRL + (adbdma << 2),
  dma->dma_ctrl);
}
