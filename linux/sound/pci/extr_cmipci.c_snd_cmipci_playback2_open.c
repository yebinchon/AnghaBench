
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; int rates; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct cmipci {int max_channels; int chip_version; int open_mutex; scalar_t__ can_multi_ch; int * opened; } ;


 size_t CM_CH_PLAY ;
 int CM_OPEN_PLAYBACK2 ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_88200 ;
 int SNDRV_PCM_RATE_96000 ;
 int SNDRV_PCM_RATE_KNOT ;
 int hw_constraints_channels_4 ;
 int hw_constraints_channels_6 ;
 int hw_constraints_channels_8 ;
 int hw_constraints_rates ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_device_check (struct cmipci*,int ,struct snd_pcm_substream*) ;
 TYPE_1__ snd_cmipci_playback2 ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_playback2_open(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 if ((err = open_device_check(cm, CM_OPEN_PLAYBACK2, substream)) < 0)
  return err;
 runtime->hw = snd_cmipci_playback2;
 mutex_lock(&cm->open_mutex);
 if (! cm->opened[CM_CH_PLAY]) {
  if (cm->can_multi_ch) {
   runtime->hw.channels_max = cm->max_channels;
   if (cm->max_channels == 4)
    snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_4);
   else if (cm->max_channels == 6)
    snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_6);
   else if (cm->max_channels == 8)
    snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_8);
  }
 }
 mutex_unlock(&cm->open_mutex);
 if (cm->chip_version == 68) {
  runtime->hw.rates |= SNDRV_PCM_RATE_88200 |
         SNDRV_PCM_RATE_96000;
  runtime->hw.rate_max = 96000;
 } else if (cm->chip_version == 55) {
  err = snd_pcm_hw_constraint_list(runtime, 0,
   SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);
  if (err < 0)
   return err;
  runtime->hw.rates |= SNDRV_PCM_RATE_KNOT;
  runtime->hw.rate_max = 128000;
 }
 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 0x10000);
 return 0;
}
