
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int pop_wait; TYPE_5__* card; int pmdown_time; int delayed_work; TYPE_2__* dai_link; struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_4__* driver; scalar_t__ rate; int active; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_10__ {int pcm_mutex; int pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* cops; } ;
struct TYPE_8__ {int (* shutdown ) (struct snd_compr_stream*,struct snd_soc_dai*) ;} ;
struct TYPE_7__ {TYPE_1__* compr_ops; } ;
struct TYPE_6__ {int (* shutdown ) (struct snd_compr_stream*) ;} ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_COMPRESS_PLAYBACK ;
 int SND_SOC_DAPM_STREAM_STOP ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_soc_dai_digital_mute (struct snd_soc_dai*,int,int ) ;
 int snd_soc_dapm_stream_event (struct snd_soc_pcm_runtime*,int,int ) ;
 int snd_soc_runtime_deactivate (struct snd_soc_pcm_runtime*,int) ;
 scalar_t__ snd_soc_runtime_ignore_pmdown_time (struct snd_soc_pcm_runtime*) ;
 int soc_compr_components_free (struct snd_compr_stream*,int *) ;
 int stub1 (struct snd_compr_stream*) ;
 int stub2 (struct snd_compr_stream*,struct snd_soc_dai*) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int soc_compr_free(struct snd_compr_stream *cstream)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int stream;

 mutex_lock_nested(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

 if (cstream->direction == SND_COMPRESS_PLAYBACK)
  stream = SNDRV_PCM_STREAM_PLAYBACK;
 else
  stream = SNDRV_PCM_STREAM_CAPTURE;

 snd_soc_runtime_deactivate(rtd, stream);

 snd_soc_dai_digital_mute(codec_dai, 1, cstream->direction);

 if (!cpu_dai->active)
  cpu_dai->rate = 0;

 if (!codec_dai->active)
  codec_dai->rate = 0;

 if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->shutdown)
  rtd->dai_link->compr_ops->shutdown(cstream);

 soc_compr_components_free(cstream, ((void*)0));

 if (cpu_dai->driver->cops && cpu_dai->driver->cops->shutdown)
  cpu_dai->driver->cops->shutdown(cstream, cpu_dai);

 if (cstream->direction == SND_COMPRESS_PLAYBACK) {
  if (snd_soc_runtime_ignore_pmdown_time(rtd)) {
   snd_soc_dapm_stream_event(rtd,
        SNDRV_PCM_STREAM_PLAYBACK,
        SND_SOC_DAPM_STREAM_STOP);
  } else {
   rtd->pop_wait = 1;
   queue_delayed_work(system_power_efficient_wq,
        &rtd->delayed_work,
        msecs_to_jiffies(rtd->pmdown_time));
  }
 } else {

  snd_soc_dapm_stream_event(rtd,
       SNDRV_PCM_STREAM_CAPTURE,
       SND_SOC_DAPM_STREAM_STOP);
 }

 mutex_unlock(&rtd->card->pcm_mutex);
 return 0;
}
