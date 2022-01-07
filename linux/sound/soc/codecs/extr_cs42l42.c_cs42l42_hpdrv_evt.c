
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int CS42L42_ASP_DAI_PDN_MASK ;
 int CS42L42_ASP_RX0_CH1_EN ;
 int CS42L42_ASP_RX0_CH2_EN ;
 int CS42L42_ASP_RX0_CH_EN_MASK ;
 int CS42L42_ASP_RX0_CH_EN_SHIFT ;
 int CS42L42_ASP_RX_DAI0_EN ;
 int CS42L42_HP_PDN_MASK ;
 int CS42L42_MIXER_PDN_MASK ;
 int CS42L42_PWR_CTL1 ;
 int SND_SOC_DAPM_POST_PMU ;
 int SND_SOC_DAPM_PRE_PMD ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs42l42_hpdrv_evt(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 if (event & SND_SOC_DAPM_POST_PMU) {

  snd_soc_component_update_bits(component, CS42L42_ASP_RX_DAI0_EN,
    CS42L42_ASP_RX0_CH_EN_MASK,
    (CS42L42_ASP_RX0_CH1_EN |
    CS42L42_ASP_RX0_CH2_EN) <<
    CS42L42_ASP_RX0_CH_EN_SHIFT);


  snd_soc_component_update_bits(component, CS42L42_PWR_CTL1,
   CS42L42_ASP_DAI_PDN_MASK | CS42L42_MIXER_PDN_MASK |
    CS42L42_HP_PDN_MASK, 0);
 } else if (event & SND_SOC_DAPM_PRE_PMD) {

  snd_soc_component_update_bits(component, CS42L42_ASP_RX_DAI0_EN,
    CS42L42_ASP_RX0_CH_EN_MASK, 0);


  snd_soc_component_update_bits(component, CS42L42_PWR_CTL1,
   CS42L42_ASP_DAI_PDN_MASK | CS42L42_MIXER_PDN_MASK |
    CS42L42_HP_PDN_MASK,
   CS42L42_ASP_DAI_PDN_MASK | CS42L42_MIXER_PDN_MASK |
    CS42L42_HP_PDN_MASK);
 } else {
  dev_err(component->dev, "Invalid event 0x%x\n", event);
 }
 return 0;
}
