
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {scalar_t__ list; } ;
struct es8316_priv {TYPE_1__ sysclk_constraints; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,TYPE_1__*) ;
 struct es8316_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8316_pcm_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct es8316_priv *es8316 = snd_soc_component_get_drvdata(component);

 if (es8316->sysclk_constraints.list)
  snd_pcm_hw_constraint_list(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_RATE,
        &es8316->sysclk_constraints);

 return 0;
}
