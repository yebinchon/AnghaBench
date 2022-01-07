
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_sgio2audio_chan {int idx; } ;
struct snd_sgio2audio {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct TYPE_8__ {TYPE_2__* chan; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_10__ {TYPE_4__ perif; } ;
struct TYPE_7__ {int control; } ;
struct TYPE_6__ {struct snd_sgio2audio_chan* private_data; } ;


 int CHANNEL_CONTROL_RESET ;
 int CHANNEL_DMA_ENABLE ;
 int CHANNEL_INT_THRESHOLD_50 ;
 scalar_t__ CHANNEL_RING_SIZE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_5__* mace ;
 struct snd_sgio2audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sgio2audio_dma_push_frag (struct snd_sgio2audio*,int,scalar_t__) ;
 int udelay (int) ;
 int writeq (int,int *) ;

__attribute__((used)) static int snd_sgio2audio_dma_start(struct snd_pcm_substream *substream)
{
 struct snd_sgio2audio *chip = snd_pcm_substream_chip(substream);
 struct snd_sgio2audio_chan *chan = substream->runtime->private_data;
 int ch = chan->idx;


 writeq(CHANNEL_CONTROL_RESET, &mace->perif.audio.chan[ch].control);
 udelay(10);
 writeq(0, &mace->perif.audio.chan[ch].control);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

  snd_sgio2audio_dma_push_frag(chip, ch, CHANNEL_RING_SIZE - 32);
 }

 writeq(CHANNEL_DMA_ENABLE | CHANNEL_INT_THRESHOLD_50,
        &mace->perif.audio.chan[ch].control);
 return 0;
}
