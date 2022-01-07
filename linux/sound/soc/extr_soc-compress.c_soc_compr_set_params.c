
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_5__* card; int delayed_work; scalar_t__ pop_wait; TYPE_4__* dai_link; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_compr_stream {scalar_t__ direction; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_params {int dummy; } ;
struct TYPE_10__ {int pcm_mutex; int pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* compr_ops; } ;
struct TYPE_8__ {int (* set_params ) (struct snd_compr_stream*) ;} ;
struct TYPE_7__ {TYPE_1__* cops; } ;
struct TYPE_6__ {int (* set_params ) (struct snd_compr_stream*,struct snd_compr_params*,struct snd_soc_dai*) ;} ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ SND_COMPRESS_PLAYBACK ;
 int SND_SOC_DAPM_STREAM_START ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_dapm_stream_event (struct snd_soc_pcm_runtime*,int ,int ) ;
 int soc_compr_components_set_params (struct snd_compr_stream*,struct snd_compr_params*) ;
 int stub1 (struct snd_compr_stream*,struct snd_compr_params*,struct snd_soc_dai*) ;
 int stub2 (struct snd_compr_stream*) ;

__attribute__((used)) static int soc_compr_set_params(struct snd_compr_stream *cstream,
    struct snd_compr_params *params)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int ret;

 mutex_lock_nested(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);
 if (cpu_dai->driver->cops && cpu_dai->driver->cops->set_params) {
  ret = cpu_dai->driver->cops->set_params(cstream, params, cpu_dai);
  if (ret < 0)
   goto err;
 }

 ret = soc_compr_components_set_params(cstream, params);
 if (ret < 0)
  goto err;

 if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->set_params) {
  ret = rtd->dai_link->compr_ops->set_params(cstream);
  if (ret < 0)
   goto err;
 }

 if (cstream->direction == SND_COMPRESS_PLAYBACK)
  snd_soc_dapm_stream_event(rtd, SNDRV_PCM_STREAM_PLAYBACK,
       SND_SOC_DAPM_STREAM_START);
 else
  snd_soc_dapm_stream_event(rtd, SNDRV_PCM_STREAM_CAPTURE,
       SND_SOC_DAPM_STREAM_START);


 rtd->pop_wait = 0;
 mutex_unlock(&rtd->card->pcm_mutex);

 cancel_delayed_work_sync(&rtd->delayed_work);

 return 0;

err:
 mutex_unlock(&rtd->card->pcm_mutex);
 return ret;
}
