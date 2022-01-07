
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_sgio2audio_chan {size_t idx; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_8__ {TYPE_2__* chan; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_10__ {TYPE_4__ perif; } ;
struct TYPE_7__ {int control; } ;
struct TYPE_6__ {struct snd_sgio2audio_chan* private_data; } ;


 TYPE_5__* mace ;
 int writeq (int ,int *) ;

__attribute__((used)) static int snd_sgio2audio_dma_stop(struct snd_pcm_substream *substream)
{
 struct snd_sgio2audio_chan *chan = substream->runtime->private_data;

 writeq(0, &mace->perif.audio.chan[chan->idx].control);
 return 0;
}
