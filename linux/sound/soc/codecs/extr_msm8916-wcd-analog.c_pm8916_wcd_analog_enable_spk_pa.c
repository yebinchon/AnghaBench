
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int CDC_A_RX_EAR_CTL ;
 int CDC_A_SPKR_DAC_CTL ;
 int CDC_A_SPKR_DRV_CTL ;
 int CDC_A_SPKR_PWRSTG_CTL ;
 int RX_EAR_CTL_SPK_VBAT_LDO_EN_ENABLE ;
 int RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK ;



 int SPKR_DAC_CTL_DAC_RESET_MASK ;
 int SPKR_DAC_CTL_DAC_RESET_NORMAL ;
 int SPKR_DRV_CLASSD_PA_EN_ENABLE ;
 int SPKR_DRV_CLASSD_PA_EN_MASK ;
 int SPKR_DRV_CTL_DEF_MASK ;
 int SPKR_DRV_CTL_DEF_VAL ;
 int SPKR_PWRSTG_CTL_BBM_EN ;
 int SPKR_PWRSTG_CTL_BBM_MASK ;
 int SPKR_PWRSTG_CTL_CLAMP_EN ;
 int SPKR_PWRSTG_CTL_CLAMP_EN_MASK ;
 int SPKR_PWRSTG_CTL_DAC_EN ;
 int SPKR_PWRSTG_CTL_DAC_EN_MASK ;
 int SPKR_PWRSTG_CTL_HBRDGE_EN ;
 int SPKR_PWRSTG_CTL_HBRDGE_EN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int pm8916_wcd_analog_enable_spk_pa(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol,
         int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, CDC_A_SPKR_PWRSTG_CTL,
        SPKR_PWRSTG_CTL_DAC_EN_MASK |
        SPKR_PWRSTG_CTL_BBM_MASK |
        SPKR_PWRSTG_CTL_HBRDGE_EN_MASK |
        SPKR_PWRSTG_CTL_CLAMP_EN_MASK,
        SPKR_PWRSTG_CTL_DAC_EN|
        SPKR_PWRSTG_CTL_BBM_EN |
        SPKR_PWRSTG_CTL_HBRDGE_EN |
        SPKR_PWRSTG_CTL_CLAMP_EN);

  snd_soc_component_update_bits(component, CDC_A_RX_EAR_CTL,
        RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK,
        RX_EAR_CTL_SPK_VBAT_LDO_EN_ENABLE);
  break;
 case 129:
  snd_soc_component_update_bits(component, CDC_A_SPKR_DRV_CTL,
        SPKR_DRV_CTL_DEF_MASK,
        SPKR_DRV_CTL_DEF_VAL);
  snd_soc_component_update_bits(component, w->reg,
        SPKR_DRV_CLASSD_PA_EN_MASK,
        SPKR_DRV_CLASSD_PA_EN_ENABLE);
  break;
 case 130:
  snd_soc_component_update_bits(component, CDC_A_SPKR_PWRSTG_CTL,
        SPKR_PWRSTG_CTL_DAC_EN_MASK|
        SPKR_PWRSTG_CTL_BBM_MASK |
        SPKR_PWRSTG_CTL_HBRDGE_EN_MASK |
        SPKR_PWRSTG_CTL_CLAMP_EN_MASK, 0);

  snd_soc_component_update_bits(component, CDC_A_SPKR_DAC_CTL,
        SPKR_DAC_CTL_DAC_RESET_MASK,
        SPKR_DAC_CTL_DAC_RESET_NORMAL);
  snd_soc_component_update_bits(component, CDC_A_RX_EAR_CTL,
        RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK, 0);
  break;
 }
 return 0;
}
