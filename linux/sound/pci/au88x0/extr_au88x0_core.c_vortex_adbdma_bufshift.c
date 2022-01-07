
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* card; int mmio; TYPE_3__* dma_adb; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_7__ {int nr_periods; int period_real; int period_virt; int period_bytes; int substream; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_5__ {int dev; } ;


 int ADB_SUBBUF_MASK ;
 int ADB_SUBBUF_SHIFT ;
 scalar_t__ VORTEX_ADBDMA_BUFBASE ;
 scalar_t__ VORTEX_ADBDMA_STAT ;
 int dev_info (int ,char*,int,int,int,int) ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int ) ;
 int snd_pcm_sgbuf_get_addr (int ,int) ;

__attribute__((used)) static int vortex_adbdma_bufshift(vortex_t * vortex, int adbdma)
{
 stream_t *dma = &vortex->dma_adb[adbdma];
 int page, p, pp, delta, i;

 page =
     (hwread(vortex->mmio, VORTEX_ADBDMA_STAT + (adbdma << 2)) &
      ADB_SUBBUF_MASK) >> ADB_SUBBUF_SHIFT;
 if (dma->nr_periods >= 4)
  delta = (page - dma->period_real) & 3;
 else {
  delta = (page - dma->period_real);
  if (delta < 0)
   delta += dma->nr_periods;
 }
 if (delta == 0)
  return 0;


 if (dma->nr_periods > 4) {
  for (i = 0; i < delta; i++) {

   p = dma->period_virt + i + 4;
   if (p >= dma->nr_periods)
    p -= dma->nr_periods;

   pp = dma->period_real + i;
   if (pp >= 4)
    pp -= 4;

   hwwrite(vortex->mmio,
    VORTEX_ADBDMA_BUFBASE + (((adbdma << 2) + pp) << 2),
    snd_pcm_sgbuf_get_addr(dma->substream,
    dma->period_bytes * p));

   hwread(vortex->mmio, VORTEX_ADBDMA_BUFBASE +
          (((adbdma << 2) + pp) << 2));
  }
 }
 dma->period_virt += delta;
 dma->period_real = page;
 if (dma->period_virt >= dma->nr_periods)
  dma->period_virt -= dma->nr_periods;
 if (delta != 1)
  dev_info(vortex->card->dev,
    "%d virt=%d, real=%d, delta=%d\n",
    adbdma, dma->period_virt, dma->period_real, delta);

 return delta;
}
