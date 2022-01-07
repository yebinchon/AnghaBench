
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct es1938 {struct snd_pcm_substream* playback2_substream; int capture_substream; struct snd_pcm_substream* playback1_substream; } ;


 int EAGAIN ;
 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_clocks ;
 int snd_BUG () ;
 int snd_es1938_playback ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1938_playback_open(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 switch (substream->number) {
 case 0:
  chip->playback1_substream = substream;
  break;
 case 1:
  if (chip->capture_substream)
   return -EAGAIN;
  chip->playback2_substream = substream;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }
 runtime->hw = snd_es1938_playback;
 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &hw_constraints_clocks);
 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 0, 0xff00);
 return 0;
}
