
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct nau8540 {int regmap; } ;


 int NAU8540_I2S_DO12_TRI ;
 int NAU8540_I2S_DO34_TRI ;
 int NAU8540_REG_PCM_CTRL1 ;
 int NAU8540_REG_PCM_CTRL2 ;
 scalar_t__ SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8540* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adc_power_control(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *k, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct nau8540 *nau8540 = snd_soc_component_get_drvdata(component);

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  msleep(300);

  regmap_update_bits(nau8540->regmap, NAU8540_REG_PCM_CTRL1,
   NAU8540_I2S_DO12_TRI, 0);
  regmap_update_bits(nau8540->regmap, NAU8540_REG_PCM_CTRL2,
   NAU8540_I2S_DO34_TRI, 0);
 } else if (SND_SOC_DAPM_EVENT_OFF(event)) {
  regmap_update_bits(nau8540->regmap, NAU8540_REG_PCM_CTRL1,
   NAU8540_I2S_DO12_TRI, NAU8540_I2S_DO12_TRI);
  regmap_update_bits(nau8540->regmap, NAU8540_REG_PCM_CTRL2,
   NAU8540_I2S_DO34_TRI, NAU8540_I2S_DO34_TRI);
 }
 return 0;
}
