
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {unsigned int hp_ena; int type; int regmap; scalar_t__* out_shorted; int * out_clamp; } ;





 unsigned int MADERA_EP_SEL_MASK ;
 int MADERA_OUTPUT_ENABLES_1 ;




 int madera_out_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int madera_hp_ev(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 unsigned int mask = 1 << w->shift;
 unsigned int out_num = w->shift / 2;
 unsigned int val;
 unsigned int ep_sel = 0;

 switch (event) {
 case 130:
  val = mask;
  break;
 case 129:
  val = 0;
  break;
 case 128:
 case 131:
  return madera_out_ev(w, kcontrol, event);
 default:
  return 0;
 }


 madera->hp_ena &= ~mask;
 madera->hp_ena |= val;

 switch (madera->type) {
 case 134:
 case 133:
 case 132:
  break;
 default:

  regmap_read(madera->regmap, MADERA_OUTPUT_ENABLES_1, &ep_sel);
  ep_sel &= MADERA_EP_SEL_MASK;
  break;
 }


 if (!ep_sel &&
     (!madera->out_clamp[out_num] || madera->out_shorted[out_num]))
  val = 0;

 regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1, mask, val);

 return madera_out_ev(w, kcontrol, event);
}
