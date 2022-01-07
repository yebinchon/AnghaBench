
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct ensoniq {int reg_lock; int spdif_default; int spdif_stream; int * playback1_substream; scalar_t__ spdif; struct snd_pcm_substream* playback2_substream; int mode; } ;


 int ES_MODE_PLAY2 ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_ensoniq_playback2 ;
 int snd_es1370_hw_constraints_clock ;
 int snd_es1371_hw_constraints_dac_clock ;
 int snd_pcm_hw_constraint_ratdens (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_playback2_open(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 ensoniq->mode |= ES_MODE_PLAY2;
 ensoniq->playback2_substream = substream;
 runtime->hw = snd_ensoniq_playback2;
 snd_pcm_set_sync(substream);
 spin_lock_irq(&ensoniq->reg_lock);
 if (ensoniq->spdif && ensoniq->playback1_substream == ((void*)0))
  ensoniq->spdif_stream = ensoniq->spdif_default;
 spin_unlock_irq(&ensoniq->reg_lock);




 snd_pcm_hw_constraint_ratdens(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &snd_es1371_hw_constraints_dac_clock);

 return 0;
}
