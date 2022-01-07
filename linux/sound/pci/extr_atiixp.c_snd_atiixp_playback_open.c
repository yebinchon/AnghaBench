
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct atiixp {int max_channels; int open_mutex; int * dmas; } ;
struct TYPE_3__ {int channels_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 size_t ATI_DMA_PLAYBACK ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_atiixp_pcm_open (struct snd_pcm_substream*,int *,int ) ;
 int snd_pcm_hw_constraint_step (TYPE_2__*,int ,int ,int) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_playback_open(struct snd_pcm_substream *substream)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);
 int err;

 mutex_lock(&chip->open_mutex);
 err = snd_atiixp_pcm_open(substream, &chip->dmas[ATI_DMA_PLAYBACK], 0);
 mutex_unlock(&chip->open_mutex);
 if (err < 0)
  return err;
 substream->runtime->hw.channels_max = chip->max_channels;
 if (chip->max_channels > 2)

  snd_pcm_hw_constraint_step(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 return 0;
}
