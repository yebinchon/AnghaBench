
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_ops {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct snd_pcm_ops const snd_sb16_capture_ops ;
 struct snd_pcm_ops const snd_sb16_playback_ops ;

const struct snd_pcm_ops *snd_sb16dsp_get_pcm_ops(int direction)
{
 return direction == SNDRV_PCM_STREAM_PLAYBACK ?
  &snd_sb16_playback_ops : &snd_sb16_capture_ops;
}
