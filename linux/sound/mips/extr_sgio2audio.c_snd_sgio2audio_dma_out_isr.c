
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_sgio2audio_chan {int idx; struct snd_pcm_substream* substream; } ;
struct snd_sgio2audio {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {TYPE_3__* chan; } ;
struct TYPE_6__ {TYPE_1__ audio; } ;
struct TYPE_8__ {TYPE_2__ perif; } ;
struct TYPE_7__ {int depth; } ;


 int CHANNEL_RING_SIZE ;
 int IRQ_HANDLED ;
 TYPE_4__* mace ;
 int readq (int *) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 struct snd_sgio2audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ snd_sgio2audio_dma_push_frag (struct snd_sgio2audio*,int,int) ;

__attribute__((used)) static irqreturn_t snd_sgio2audio_dma_out_isr(int irq, void *dev_id)
{
 struct snd_sgio2audio_chan *chan = dev_id;
 struct snd_pcm_substream *substream;
 struct snd_sgio2audio *chip;
 int count, ch;

 substream = chan->substream;
 chip = snd_pcm_substream_chip(substream);
 ch = chan->idx;

 count = CHANNEL_RING_SIZE -
  readq(&mace->perif.audio.chan[ch].depth) - 32;
 if (snd_sgio2audio_dma_push_frag(chip, ch, count))
  snd_pcm_period_elapsed(substream);

 return IRQ_HANDLED;
}
