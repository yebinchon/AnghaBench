
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dpcm; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {scalar_t__ runtime_update; int trigger_pending; } ;


 scalar_t__ SND_SOC_DPCM_UPDATE_NO ;
 int dpcm_fe_dai_do_trigger (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int dpcm_fe_dai_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int stream = substream->stream;




 if (fe->dpcm[stream].runtime_update != SND_SOC_DPCM_UPDATE_NO) {
  fe->dpcm[stream].trigger_pending = cmd + 1;
  return 0;
 }


 return dpcm_fe_dai_do_trigger(substream, cmd);
}
