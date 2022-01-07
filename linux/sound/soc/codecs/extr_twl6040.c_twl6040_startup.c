
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {size_t pll_power_mode; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int * sysclk_constraints ;

__attribute__((used)) static int twl6040_startup(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE,
    &sysclk_constraints[priv->pll_power_mode]);

 return 0;
}
