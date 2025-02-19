
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct es8328_priv {scalar_t__ sysclk_constraints; scalar_t__ master; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,scalar_t__) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8328_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct es8328_priv *es8328 = snd_soc_component_get_drvdata(component);

 if (es8328->master && es8328->sysclk_constraints)
  snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE,
    es8328->sysclk_constraints);

 return 0;
}
