
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_wt; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int period_virt; int period_bytes; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_WTDMA_STAT ;
 int hwread (int ,scalar_t__) ;

__attribute__((used)) static inline int vortex_wtdma_getlinearpos(vortex_t * vortex, int wtdma)
{
 stream_t *dma = &vortex->dma_wt[wtdma];
 int temp;

 temp = hwread(vortex->mmio, VORTEX_WTDMA_STAT + (wtdma << 2));
 temp = (dma->period_virt * dma->period_bytes) + (temp & (dma->period_bytes - 1));
 return temp;
}
