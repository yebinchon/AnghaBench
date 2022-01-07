
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1273_priv {int mode; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; int runtime; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;



 int pr_err (char*) ;
 int snd_pcm_hw_constraint_single (int ,int ,int) ;
 struct wl1273_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wl1273_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wl1273_priv *wl1273 = snd_soc_component_get_drvdata(component);

 switch (wl1273->mode) {
 case 130:
  snd_pcm_hw_constraint_single(substream->runtime,
          SNDRV_PCM_HW_PARAM_RATE, 8000);
  snd_pcm_hw_constraint_single(substream->runtime,
          SNDRV_PCM_HW_PARAM_CHANNELS, 1);
  break;
 case 129:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   pr_err("Cannot play in RX mode.\n");
   return -EINVAL;
  }
  break;
 case 128:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
   pr_err("Cannot capture in TX mode.\n");
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
  break;
 }

 return 0;
}
