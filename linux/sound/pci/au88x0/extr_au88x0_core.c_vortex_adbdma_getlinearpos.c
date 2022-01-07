
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int nr_periods; int period_real; int period_virt; int period_bytes; } ;
typedef TYPE_2__ stream_t ;


 int ADB_SUBBUF_MASK ;
 int ADB_SUBBUF_SHIFT ;
 scalar_t__ VORTEX_ADBDMA_STAT ;
 int hwread (int ,scalar_t__) ;

__attribute__((used)) static inline int vortex_adbdma_getlinearpos(vortex_t * vortex, int adbdma)
{
 stream_t *dma = &vortex->dma_adb[adbdma];
 int temp, page, delta;

 temp = hwread(vortex->mmio, VORTEX_ADBDMA_STAT + (adbdma << 2));
 page = (temp & ADB_SUBBUF_MASK) >> ADB_SUBBUF_SHIFT;
 if (dma->nr_periods >= 4)
  delta = (page - dma->period_real) & 3;
 else {
  delta = (page - dma->period_real);
  if (delta < 0)
   delta += dma->nr_periods;
 }
 return (dma->period_virt + delta) * dma->period_bytes
  + (temp & (dma->period_bytes - 1));
}
