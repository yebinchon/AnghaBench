
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* runtime; TYPE_1__* pcm; } ;
struct snd_card_aica {struct snd_pcm_substream* substream; TYPE_2__* channel; } ;
struct TYPE_6__ {scalar_t__ format; int rate; } ;
struct TYPE_5__ {int freq; int sfmt; } ;
struct TYPE_4__ {struct snd_card_aica* private_data; } ;


 int SM_16BIT ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;

__attribute__((used)) static int snd_aicapcm_pcm_prepare(struct snd_pcm_substream
       *substream)
{
 struct snd_card_aica *dreamcastcard = substream->pcm->private_data;
 if ((substream->runtime)->format == SNDRV_PCM_FORMAT_S16_LE)
  dreamcastcard->channel->sfmt = SM_16BIT;
 dreamcastcard->channel->freq = substream->runtime->rate;
 dreamcastcard->substream = substream;
 return 0;
}
