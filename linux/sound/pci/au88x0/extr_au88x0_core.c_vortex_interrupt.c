
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* card; TYPE_3__* rmidi; int irq; int mmio; int lock; TYPE_2__* dma_wt; TYPE_1__* dma_adb; } ;
typedef TYPE_5__ vortex_t ;
typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int private_data; } ;
struct TYPE_9__ {scalar_t__ fifo_status; int substream; } ;
struct TYPE_8__ {scalar_t__ fifo_status; int substream; } ;


 int CTRL_IRQ_ENABLE ;
 scalar_t__ FIFO_START ;
 int IRQ_DMA ;
 int IRQ_ERR_MASK ;
 int IRQ_FATAL ;
 int IRQ_FIFO ;
 int IRQ_MIDI ;
 int IRQ_NONE ;
 int IRQ_PARITY ;
 int IRQ_PCMOUT ;
 int IRQ_REG ;
 int IRQ_RETVAL (int) ;
 int IRQ_TIMER ;
 int NR_ADB ;
 int NR_WT ;
 int VORTEX_CTRL ;
 int VORTEX_IRQ_SOURCE ;
 int VORTEX_IRQ_STAT ;
 int VORTEX_STAT ;
 int dev_err (int ,char*,...) ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;
 int snd_mpu401_uart_interrupt (int ,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vortex_adbdma_bufshift (TYPE_5__*,int) ;
 int vortex_wtdma_bufshift (TYPE_5__*,int) ;

__attribute__((used)) static irqreturn_t vortex_interrupt(int irq, void *dev_id)
{
 vortex_t *vortex = dev_id;
 int i, handled;
 u32 source;


 if (!(hwread(vortex->mmio, VORTEX_STAT) & 0x1))
  return IRQ_NONE;


 if (!(hwread(vortex->mmio, VORTEX_CTRL) & CTRL_IRQ_ENABLE))
  return IRQ_NONE;

 source = hwread(vortex->mmio, VORTEX_IRQ_SOURCE);

 hwwrite(vortex->mmio, VORTEX_IRQ_SOURCE, source);
 hwread(vortex->mmio, VORTEX_IRQ_SOURCE);

 if (source == 0) {
  dev_err(vortex->card->dev, "missing irq source\n");
  return IRQ_NONE;
 }

 handled = 0;

 if (unlikely(source & IRQ_ERR_MASK)) {
  if (source & IRQ_FATAL) {
   dev_err(vortex->card->dev, "IRQ fatal error\n");
  }
  if (source & IRQ_PARITY) {
   dev_err(vortex->card->dev, "IRQ parity error\n");
  }
  if (source & IRQ_REG) {
   dev_err(vortex->card->dev, "IRQ reg error\n");
  }
  if (source & IRQ_FIFO) {
   dev_err(vortex->card->dev, "IRQ fifo error\n");
  }
  if (source & IRQ_DMA) {
   dev_err(vortex->card->dev, "IRQ dma error\n");
  }
  handled = 1;
 }
 if (source & IRQ_PCMOUT) {

  spin_lock(&vortex->lock);
  for (i = 0; i < NR_ADB; i++) {
   if (vortex->dma_adb[i].fifo_status == FIFO_START) {
    if (!vortex_adbdma_bufshift(vortex, i))
     continue;
    spin_unlock(&vortex->lock);
    snd_pcm_period_elapsed(vortex->dma_adb[i].
             substream);
    spin_lock(&vortex->lock);
   }
  }

  for (i = 0; i < NR_WT; i++) {
   if (vortex->dma_wt[i].fifo_status == FIFO_START) {





    vortex_wtdma_bufshift(vortex, i);
    spin_unlock(&vortex->lock);
    snd_pcm_period_elapsed(vortex->dma_wt[i].
             substream);
    spin_lock(&vortex->lock);
   }
  }

  spin_unlock(&vortex->lock);
  handled = 1;
 }

 if (source & IRQ_TIMER) {
  hwread(vortex->mmio, VORTEX_IRQ_STAT);
  handled = 1;
 }
 if ((source & IRQ_MIDI) && vortex->rmidi) {
  snd_mpu401_uart_interrupt(vortex->irq,
       vortex->rmidi->private_data);
  handled = 1;
 }

 if (!handled) {
  dev_err(vortex->card->dev, "unknown irq source %x\n", source);
 }
 return IRQ_RETVAL(handled);
}
