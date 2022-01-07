
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dpcm; } ;
struct snd_pcm_substream {int dummy; } ;
typedef enum snd_soc_dpcm_update { ____Placeholder_snd_soc_dpcm_update } snd_soc_dpcm_update ;
struct TYPE_2__ {int runtime_update; scalar_t__ trigger_pending; } ;


 int SND_SOC_DPCM_UPDATE_NO ;
 int dpcm_fe_dai_do_trigger (struct snd_pcm_substream*,scalar_t__) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 struct snd_pcm_substream* snd_soc_dpcm_get_substream (struct snd_soc_pcm_runtime*,int) ;

__attribute__((used)) static void dpcm_set_fe_update_state(struct snd_soc_pcm_runtime *fe,
         int stream, enum snd_soc_dpcm_update state)
{
 struct snd_pcm_substream *substream =
  snd_soc_dpcm_get_substream(fe, stream);

 snd_pcm_stream_lock_irq(substream);
 if (state == SND_SOC_DPCM_UPDATE_NO && fe->dpcm[stream].trigger_pending) {
  dpcm_fe_dai_do_trigger(substream,
           fe->dpcm[stream].trigger_pending - 1);
  fe->dpcm[stream].trigger_pending = 0;
 }
 fe->dpcm[stream].runtime_update = state;
 snd_pcm_stream_unlock_irq(substream);
}
