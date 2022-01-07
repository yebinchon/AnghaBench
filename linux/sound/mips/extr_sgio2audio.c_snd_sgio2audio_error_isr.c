
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sgio2audio_chan {struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int snd_sgio2audio_dma_start (struct snd_pcm_substream*) ;
 int snd_sgio2audio_dma_stop (struct snd_pcm_substream*) ;

__attribute__((used)) static irqreturn_t snd_sgio2audio_error_isr(int irq, void *dev_id)
{
 struct snd_sgio2audio_chan *chan = dev_id;
 struct snd_pcm_substream *substream;

 substream = chan->substream;
 snd_sgio2audio_dma_stop(substream);
 snd_sgio2audio_dma_start(substream);
 return IRQ_HANDLED;
}
