
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* pcm; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_PCM_MAIN_CHANNEL ;
 int _cs46xx_playback_open_channel (struct snd_pcm_substream*,int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int snd_cs46xx_playback_open(struct snd_pcm_substream *substream)
{
 dev_dbg(substream->pcm->card->dev, "open front channel\n");
 return _cs46xx_playback_open_channel(substream,DSP_PCM_MAIN_CHANNEL);
}
