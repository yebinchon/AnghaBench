
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_es1688 {struct snd_pcm_substream* playback_substream; int * capture_substream; } ;


 int EAGAIN ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_clocks ;
 int snd_es1688_playback ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_es1688* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1688_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_es1688 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (chip->capture_substream != ((void*)0))
  return -EAGAIN;
 chip->playback_substream = substream;
 runtime->hw = snd_es1688_playback;
 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &hw_constraints_clocks);
 return 0;
}
