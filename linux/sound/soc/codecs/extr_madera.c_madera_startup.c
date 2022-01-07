
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct madera_priv {unsigned int sysclk; unsigned int asyncclk; struct madera* madera; struct madera_dai_priv* dai; } ;
struct TYPE_2__ {int mask; } ;
struct madera_dai_priv {int clk; TYPE_1__ constraint; } ;
struct madera {int type; } ;





 int MADERA_192K_44K1_RATE_MASK ;
 int MADERA_192K_48K_RATE_MASK ;
 int MADERA_192K_RATE_MASK ;
 int MADERA_384K_44K1_RATE_MASK ;
 int MADERA_384K_48K_RATE_MASK ;
 int MADERA_384K_RATE_MASK ;





 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,TYPE_1__*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int madera_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera_dai_priv *dai_priv = &priv->dai[dai->id - 1];
 struct madera *madera = priv->madera;
 unsigned int base_rate;

 if (!substream->runtime)
  return 0;

 switch (dai_priv->clk) {
 case 130:
 case 129:
 case 128:
  base_rate = priv->sysclk;
  break;
 case 132:
 case 131:
  base_rate = priv->asyncclk;
  break;
 default:
  return 0;
 }

 switch (madera->type) {
 case 135:
 case 134:
 case 133:
  if (base_rate == 0)
   dai_priv->constraint.mask = MADERA_384K_RATE_MASK;
  else if (base_rate % 4000)
   dai_priv->constraint.mask = MADERA_384K_44K1_RATE_MASK;
  else
   dai_priv->constraint.mask = MADERA_384K_48K_RATE_MASK;
  break;
 default:
  if (base_rate == 0)
   dai_priv->constraint.mask = MADERA_192K_RATE_MASK;
  else if (base_rate % 4000)
   dai_priv->constraint.mask = MADERA_192K_44K1_RATE_MASK;
  else
   dai_priv->constraint.mask = MADERA_192K_48K_RATE_MASK;
  break;
 }

 return snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &dai_priv->constraint);
}
