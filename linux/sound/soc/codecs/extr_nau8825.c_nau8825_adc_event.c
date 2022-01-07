
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct nau8825 {int regmap; int irq; } ;


 int EINVAL ;
 int NAU8825_ENABLE_ADC ;
 int NAU8825_REG_ENA_CTRL ;


 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8825* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int nau8825_adc_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  msleep(125);
  regmap_update_bits(nau8825->regmap, NAU8825_REG_ENA_CTRL,
   NAU8825_ENABLE_ADC, NAU8825_ENABLE_ADC);
  break;
 case 129:
  if (!nau8825->irq)
   regmap_update_bits(nau8825->regmap,
    NAU8825_REG_ENA_CTRL, NAU8825_ENABLE_ADC, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
