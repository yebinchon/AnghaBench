
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {unsigned int hp_ena; int regmap; scalar_t__ hpdet_clamp; } ;


 int ARIZONA_OUTPUT_ENABLES_1 ;
 int EINVAL ;




 int arizona_out_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;
 int regmap_update_bits_async (int ,int ,unsigned int,unsigned int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int arizona_hp_ev(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 unsigned int mask = 1 << w->shift;
 unsigned int val;

 switch (event) {
 case 130:
  val = mask;
  break;
 case 129:
  val = 0;
  break;
 case 128:
 case 131:
  return arizona_out_ev(w, kcontrol, event);
 default:
  return -EINVAL;
 }


 priv->arizona->hp_ena &= ~mask;
 priv->arizona->hp_ena |= val;


 if (priv->arizona->hpdet_clamp)
  val = 0;

 regmap_update_bits_async(arizona->regmap, ARIZONA_OUTPUT_ENABLES_1,
     mask, val);

 return arizona_out_ev(w, kcontrol, event);
}
