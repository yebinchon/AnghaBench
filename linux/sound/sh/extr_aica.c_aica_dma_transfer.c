
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;
struct snd_card_aica {int clicks; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;


 int AICA_BUFFER_SIZE ;
 scalar_t__ AICA_CHANNEL0_OFFSET ;
 int AICA_DMA_CHANNEL ;
 int AICA_DMA_MODE ;
 int AICA_PERIOD_NUMBER ;
 int AICA_PERIOD_SIZE ;
 int CHANNEL_OFFSET ;
 int dma_wait_for_completion (int ) ;
 int dma_xfer (int ,unsigned long,scalar_t__,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aica_dma_transfer(int channels, int buffer_size,
        struct snd_pcm_substream *substream)
{
 int q, err, period_offset;
 struct snd_card_aica *dreamcastcard;
 struct snd_pcm_runtime *runtime;
 unsigned long flags;
 err = 0;
 dreamcastcard = substream->pcm->private_data;
 period_offset = dreamcastcard->clicks;
 period_offset %= (AICA_PERIOD_NUMBER / channels);
 runtime = substream->runtime;
 for (q = 0; q < channels; q++) {
  local_irq_save(flags);
  err = dma_xfer(AICA_DMA_CHANNEL,
          (unsigned long) (runtime->dma_area +
      (AICA_BUFFER_SIZE * q) /
      channels +
      AICA_PERIOD_SIZE *
      period_offset),
          AICA_CHANNEL0_OFFSET + q * CHANNEL_OFFSET +
          AICA_PERIOD_SIZE * period_offset,
          buffer_size / channels, AICA_DMA_MODE);
  if (unlikely(err < 0)) {
   local_irq_restore(flags);
   break;
  }
  dma_wait_for_completion(AICA_DMA_CHANNEL);
  local_irq_restore(flags);
 }
 return err;
}
