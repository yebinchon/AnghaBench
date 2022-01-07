
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct imx_pcm_runtime_data {int capturing; int playing; int poll_time_ns; int hrt; } ;


 int EINVAL ;
 int HRTIMER_MODE_REL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int disable_fiq (int ) ;
 int enable_fiq (int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int imx_pcm_fiq ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static int snd_imx_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct imx_pcm_runtime_data *iprtd = runtime->private_data;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   atomic_set(&iprtd->playing, 1);
  else
   atomic_set(&iprtd->capturing, 1);
  hrtimer_start(&iprtd->hrt, ns_to_ktime(iprtd->poll_time_ns),
        HRTIMER_MODE_REL);
  enable_fiq(imx_pcm_fiq);
  break;

 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   atomic_set(&iprtd->playing, 0);
  else
   atomic_set(&iprtd->capturing, 0);
  if (!atomic_read(&iprtd->playing) &&
    !atomic_read(&iprtd->capturing))
   disable_fiq(imx_pcm_fiq);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
