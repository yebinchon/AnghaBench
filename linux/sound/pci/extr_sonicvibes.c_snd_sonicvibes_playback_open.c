
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {struct snd_pcm_substream* playback_substream; int mode; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int SV_MODE_PLAY ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int *,int ,int) ;
 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sonicvibes_hw_constraint_dac_rate ;
 int snd_sonicvibes_playback ;

__attribute__((used)) static int snd_sonicvibes_playback_open(struct snd_pcm_substream *substream)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 sonic->mode |= SV_MODE_PLAY;
 sonic->playback_substream = substream;
 runtime->hw = snd_sonicvibes_playback;
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, snd_sonicvibes_hw_constraint_dac_rate, ((void*)0), SNDRV_PCM_HW_PARAM_RATE, -1);
 return 0;
}
