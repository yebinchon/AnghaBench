
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct regmap {int dummy; } ;
struct nau8825 {struct regmap* regmap; struct snd_soc_dapm_context* dapm; } ;


 int NAU8825_CLK_DIS ;
 int NAU8825_ENABLE_ADC ;
 int NAU8825_IRQ_EJECT_DIS ;
 int NAU8825_IRQ_EJECT_EN ;
 int NAU8825_IRQ_HEADSET_COMPLETE_EN ;
 int NAU8825_IRQ_INSERT_DIS ;
 int NAU8825_IRQ_INSERT_EN ;
 int NAU8825_IRQ_OUTPUT_EN ;
 int NAU8825_JACK_DET_DB_BYPASS ;
 int NAU8825_MICBIAS_JKR2 ;
 int NAU8825_MICBIAS_JKSLV ;
 int NAU8825_REG_ENA_CTRL ;
 int NAU8825_REG_HSD_CTRL ;
 int NAU8825_REG_INTERRUPT_DIS_CTRL ;
 int NAU8825_REG_INTERRUPT_MASK ;
 int NAU8825_REG_JACK_DET_CTRL ;
 int NAU8825_REG_MIC_BIAS ;
 int nau8825_configure_sysclk (struct nau8825*,int ,int ) ;
 int nau8825_int_status_clear_all (struct regmap*) ;
 int nau8825_xtalk_cancel (struct nau8825*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void nau8825_eject_jack(struct nau8825 *nau8825)
{
 struct snd_soc_dapm_context *dapm = nau8825->dapm;
 struct regmap *regmap = nau8825->regmap;


 nau8825_xtalk_cancel(nau8825);

 snd_soc_dapm_disable_pin(dapm, "SAR");
 snd_soc_dapm_disable_pin(dapm, "MICBIAS");

 regmap_update_bits(regmap, NAU8825_REG_MIC_BIAS,
  NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2, 0);

 regmap_update_bits(regmap, NAU8825_REG_HSD_CTRL, 0xf, 0xf);

 snd_soc_dapm_sync(dapm);


 nau8825_int_status_clear_all(regmap);




 regmap_update_bits(regmap, NAU8825_REG_INTERRUPT_DIS_CTRL,
  NAU8825_IRQ_EJECT_DIS | NAU8825_IRQ_INSERT_DIS,
  NAU8825_IRQ_EJECT_DIS);
 regmap_update_bits(regmap, NAU8825_REG_INTERRUPT_MASK,
  NAU8825_IRQ_OUTPUT_EN | NAU8825_IRQ_EJECT_EN |
  NAU8825_IRQ_HEADSET_COMPLETE_EN | NAU8825_IRQ_INSERT_EN,
  NAU8825_IRQ_OUTPUT_EN | NAU8825_IRQ_EJECT_EN |
  NAU8825_IRQ_HEADSET_COMPLETE_EN);
 regmap_update_bits(regmap, NAU8825_REG_JACK_DET_CTRL,
  NAU8825_JACK_DET_DB_BYPASS, NAU8825_JACK_DET_DB_BYPASS);


 regmap_update_bits(regmap, NAU8825_REG_ENA_CTRL,
  NAU8825_ENABLE_ADC, 0);


 nau8825_configure_sysclk(nau8825, NAU8825_CLK_DIS, 0);
}
