
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int nr_periods; int period_virt; int period_real; int period_bytes; int substream; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_ADBDMA_BUFBASE ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int ) ;
 int snd_pcm_sgbuf_get_addr (int ,int) ;

__attribute__((used)) static void vortex_adbdma_resetup(vortex_t *vortex, int adbdma) {
 stream_t *dma = &vortex->dma_adb[adbdma];
 int p, pp, i;


 for (i=0 ; i < 4 && i < dma->nr_periods; i++) {

  p = dma->period_virt + i;
  if (p >= dma->nr_periods)
   p -= dma->nr_periods;

  pp = dma->period_real + i;
  if (dma->nr_periods < 4) {
   if (pp >= dma->nr_periods)
    pp -= dma->nr_periods;
  }
  else {
   if (pp >= 4)
    pp -= 4;
  }
  hwwrite(vortex->mmio,
   VORTEX_ADBDMA_BUFBASE + (((adbdma << 2) + pp) << 2),
   snd_pcm_sgbuf_get_addr(dma->substream,
            dma->period_bytes * p));

  hwread(vortex->mmio, VORTEX_ADBDMA_BUFBASE + (((adbdma << 2)+pp) << 2));
 }
}
