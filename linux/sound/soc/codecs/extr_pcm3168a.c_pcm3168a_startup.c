
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct pcm3168a_priv {TYPE_1__* io_params; } ;
struct TYPE_2__ {int fmt; int tdm_slots; } ;







 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int,unsigned int) ;
 struct pcm3168a_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm3168a_startup(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm3168a_priv *pcm3168a = snd_soc_component_get_drvdata(component);
 unsigned int sample_min;
 unsigned int channel_max;
 unsigned int channel_maxs[] = {
  8,
  6
 };
 switch (pcm3168a->io_params[dai->id].fmt) {
 case 128:
  sample_min = 16;
  channel_max = 2;
  break;
 case 129:
 case 130:
 case 132:
 case 131:
  sample_min = 24;
  channel_max = channel_maxs[dai->id];
  break;
 default:
  sample_min = 24;
  channel_max = 2;
 }

 snd_pcm_hw_constraint_minmax(substream->runtime,
         SNDRV_PCM_HW_PARAM_SAMPLE_BITS,
         sample_min, 32);


 if (pcm3168a->io_params[dai->id].tdm_slots == 2)
  channel_max = channel_maxs[dai->id];

 snd_pcm_hw_constraint_minmax(substream->runtime,
         SNDRV_PCM_HW_PARAM_CHANNELS,
         2, channel_max);

 return 0;
}
