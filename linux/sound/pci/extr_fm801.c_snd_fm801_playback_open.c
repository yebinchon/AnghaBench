
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct fm801 {scalar_t__ multichannel; struct snd_pcm_substream* playback_substream; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_channels ;
 int hw_constraints_rates ;
 TYPE_1__ snd_fm801_playback ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_fm801_playback_open(struct snd_pcm_substream *substream)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 chip->playback_substream = substream;
 runtime->hw = snd_fm801_playback;
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
       &hw_constraints_rates);
 if (chip->multichannel) {
  runtime->hw.channels_max = 6;
  snd_pcm_hw_constraint_list(runtime, 0,
        SNDRV_PCM_HW_PARAM_CHANNELS,
        &hw_constraints_channels);
 }
 if ((err = snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
  return err;
 return 0;
}
