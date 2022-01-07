
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {scalar_t__ bias_level; } ;
struct regmap {int dummy; } ;
struct nau8824 {struct regmap* regmap; struct snd_soc_dapm_context* dapm; } ;


 int NAU8824_CLK_DIS ;
 int NAU8824_IRQ_EJECT_DIS ;
 int NAU8824_IRQ_EJECT_EN ;
 int NAU8824_IRQ_INSERT_DIS ;
 int NAU8824_IRQ_INSERT_EN ;
 int NAU8824_IRQ_KEY_RELEASE_DIS ;
 int NAU8824_IRQ_KEY_SHORT_PRESS_DIS ;
 int NAU8824_JD_SLEEP_MODE ;
 int NAU8824_REG_ENA_CTRL ;
 int NAU8824_REG_INTERRUPT_SETTING ;
 int NAU8824_REG_INTERRUPT_SETTING_1 ;
 scalar_t__ SND_SOC_BIAS_PREPARE ;
 int nau8824_config_sysclk (struct nau8824*,int ,int ) ;
 int nau8824_dapm_disable_pin (struct nau8824*,char*) ;
 int nau8824_int_status_clear_all (struct regmap*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void nau8824_eject_jack(struct nau8824 *nau8824)
{
 struct snd_soc_dapm_context *dapm = nau8824->dapm;
 struct regmap *regmap = nau8824->regmap;


 nau8824_int_status_clear_all(regmap);

 nau8824_dapm_disable_pin(nau8824, "SAR");
 nau8824_dapm_disable_pin(nau8824, "MICBIAS");
 snd_soc_dapm_sync(dapm);




 regmap_update_bits(regmap, NAU8824_REG_INTERRUPT_SETTING,
  NAU8824_IRQ_KEY_RELEASE_DIS | NAU8824_IRQ_KEY_SHORT_PRESS_DIS |
  NAU8824_IRQ_EJECT_DIS | NAU8824_IRQ_INSERT_DIS,
  NAU8824_IRQ_KEY_RELEASE_DIS | NAU8824_IRQ_KEY_SHORT_PRESS_DIS |
  NAU8824_IRQ_EJECT_DIS);
 regmap_update_bits(regmap, NAU8824_REG_INTERRUPT_SETTING_1,
  NAU8824_IRQ_INSERT_EN | NAU8824_IRQ_EJECT_EN,
  NAU8824_IRQ_INSERT_EN);
 regmap_update_bits(regmap, NAU8824_REG_ENA_CTRL,
  NAU8824_JD_SLEEP_MODE, NAU8824_JD_SLEEP_MODE);


 if (dapm->bias_level < SND_SOC_BIAS_PREPARE)
  nau8824_config_sysclk(nau8824, NAU8824_CLK_DIS, 0);
}
