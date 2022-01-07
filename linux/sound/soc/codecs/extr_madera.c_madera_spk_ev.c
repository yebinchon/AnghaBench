
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int regmap; int dev; } ;


 int EBUSY ;
 int MADERA_OUTPUT_ENABLES_1 ;


 int dev_crit (int ,char*) ;
 int madera_check_speaker_overheat (struct madera*,int*,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int madera_spk_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 bool warn, shutdown;
 int ret;

 switch (event) {
 case 129:
  ret = madera_check_speaker_overheat(madera, &warn, &shutdown);
  if (ret)
   return ret;

  if (shutdown) {
   dev_crit(madera->dev,
     "Speaker not enabled due to temperature\n");
   return -EBUSY;
  }

  regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1,
       1 << w->shift, 1 << w->shift);
  break;
 case 128:
  regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1,
       1 << w->shift, 0);
  break;
 default:
  break;
 }

 return 0;
}
