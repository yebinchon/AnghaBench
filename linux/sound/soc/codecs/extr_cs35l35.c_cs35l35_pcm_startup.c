
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct cs35l35_private {int regmap; } ;


 int CS35L35_AMP_INP_DRV_CTL ;
 int CS35L35_PDM_MODE_MASK ;
 int CS35L35_PDM_MODE_SHIFT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int cs35l35_constraints ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct cs35l35_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l35_pcm_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l35_private *cs35l35 = snd_soc_component_get_drvdata(component);

 if (!substream->runtime)
  return 0;

 snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE, &cs35l35_constraints);

 regmap_update_bits(cs35l35->regmap, CS35L35_AMP_INP_DRV_CTL,
     CS35L35_PDM_MODE_MASK,
     0 << CS35L35_PDM_MODE_SHIFT);

 return 0;
}
