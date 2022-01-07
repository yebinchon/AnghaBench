
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_runtime {long period_size; int periods; long channels; scalar_t__ dma_addr; } ;
struct snd_at73c213 {int period; TYPE_2__* substream; int lock; TYPE_1__* ssc; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int regs; } ;


 int IMR ;
 int IMR_ENDTX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PDC_TNCR ;
 int PDC_TNPR ;
 int SSC_BIT (int ) ;
 int frames_to_bytes (struct snd_pcm_runtime*,long) ;
 int snd_pcm_period_elapsed (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ssc_readl (int ,int ) ;
 int ssc_writel (int ,int ,long) ;

__attribute__((used)) static irqreturn_t snd_at73c213_interrupt(int irq, void *dev_id)
{
 struct snd_at73c213 *chip = dev_id;
 struct snd_pcm_runtime *runtime = chip->substream->runtime;
 u32 status;
 int offset;
 int block_size;
 int next_period;
 int retval = IRQ_NONE;

 spin_lock(&chip->lock);

 block_size = frames_to_bytes(runtime, runtime->period_size);
 status = ssc_readl(chip->ssc->regs, IMR);

 if (status & SSC_BIT(IMR_ENDTX)) {
  chip->period++;
  if (chip->period == runtime->periods)
   chip->period = 0;
  next_period = chip->period + 1;
  if (next_period == runtime->periods)
   next_period = 0;

  offset = block_size * next_period;

  ssc_writel(chip->ssc->regs, PDC_TNPR,
    (long)runtime->dma_addr + offset);
  ssc_writel(chip->ssc->regs, PDC_TNCR,
    runtime->period_size * runtime->channels);
  retval = IRQ_HANDLED;
 }

 ssc_readl(chip->ssc->regs, IMR);
 spin_unlock(&chip->lock);

 if (status & SSC_BIT(IMR_ENDTX))
  snd_pcm_period_elapsed(chip->substream);

 return retval;
}
