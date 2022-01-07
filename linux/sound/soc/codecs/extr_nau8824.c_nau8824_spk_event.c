
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct nau8824 {int regmap; } ;


 int EINVAL ;
 int NAU8824_CLASSD_CLAMP_DIS ;
 int NAU8824_REG_ANALOG_CONTROL_2 ;


 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int nau8824_spk_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  regmap_update_bits(nau8824->regmap,
   NAU8824_REG_ANALOG_CONTROL_2,
   NAU8824_CLASSD_CLAMP_DIS, NAU8824_CLASSD_CLAMP_DIS);
  break;
 case 129:
  regmap_update_bits(nau8824->regmap,
   NAU8824_REG_ANALOG_CONTROL_2,
   NAU8824_CLASSD_CLAMP_DIS, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
