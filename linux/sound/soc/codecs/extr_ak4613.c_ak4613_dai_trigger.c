
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct ak4613_priv {int dummy_write_work; struct snd_soc_component* component; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_TRIGGER_RESUME ;
 int SNDRV_PCM_TRIGGER_START ;
 int schedule_work (int *) ;
 struct ak4613_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4613_dai_trigger(struct snd_pcm_substream *substream, int cmd,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4613_priv *priv = snd_soc_component_get_drvdata(component);
 if ((cmd != SNDRV_PCM_TRIGGER_START) &&
     (cmd != SNDRV_PCM_TRIGGER_RESUME))
  return 0;

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return 0;

 priv->component = component;
 schedule_work(&priv->dummy_write_work);

 return 0;
}
