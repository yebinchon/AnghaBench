
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_4__* card; TYPE_3__* dpcm; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_compr_stream {scalar_t__ direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_8__ {int mutex; } ;
struct TYPE_7__ {int runtime_update; int state; } ;
struct TYPE_6__ {TYPE_1__* cops; } ;
struct TYPE_5__ {int (* trigger ) (struct snd_compr_stream*,int,struct snd_soc_dai*) ;} ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 scalar_t__ SND_COMPRESS_PLAYBACK ;
 int SND_COMPR_TRIGGER_DRAIN ;
 int SND_COMPR_TRIGGER_PARTIAL_DRAIN ;
 int SND_SOC_CARD_CLASS_RUNTIME ;
 int SND_SOC_DPCM_STATE_PAUSED ;
 int SND_SOC_DPCM_STATE_START ;
 int SND_SOC_DPCM_STATE_STOP ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dpcm_be_dai_trigger (struct snd_soc_pcm_runtime*,int,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int soc_compr_components_trigger (struct snd_compr_stream*,int) ;
 int stub1 (struct snd_compr_stream*,int,struct snd_soc_dai*) ;

__attribute__((used)) static int soc_compr_trigger_fe(struct snd_compr_stream *cstream, int cmd)
{
 struct snd_soc_pcm_runtime *fe = cstream->private_data;
 struct snd_soc_dai *cpu_dai = fe->cpu_dai;
 int ret, stream;

 if (cmd == SND_COMPR_TRIGGER_PARTIAL_DRAIN ||
     cmd == SND_COMPR_TRIGGER_DRAIN)
  return soc_compr_components_trigger(cstream, cmd);

 if (cstream->direction == SND_COMPRESS_PLAYBACK)
  stream = SNDRV_PCM_STREAM_PLAYBACK;
 else
  stream = SNDRV_PCM_STREAM_CAPTURE;

 mutex_lock_nested(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);

 if (cpu_dai->driver->cops && cpu_dai->driver->cops->trigger) {
  ret = cpu_dai->driver->cops->trigger(cstream, cmd, cpu_dai);
  if (ret < 0)
   goto out;
 }

 ret = soc_compr_components_trigger(cstream, cmd);
 if (ret < 0)
  goto out;

 fe->dpcm[stream].runtime_update = SND_SOC_DPCM_UPDATE_FE;

 ret = dpcm_be_dai_trigger(fe, stream, cmd);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_START;
  break;
 case 129:
 case 128:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_STOP;
  break;
 case 133:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_PAUSED;
  break;
 }

out:
 fe->dpcm[stream].runtime_update = SND_SOC_DPCM_UPDATE_NO;
 mutex_unlock(&fe->card->mutex);
 return ret;
}
