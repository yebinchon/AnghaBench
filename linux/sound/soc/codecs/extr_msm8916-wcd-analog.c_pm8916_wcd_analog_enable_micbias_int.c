
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dummy; } ;


 int CDC_A_MICB_1_EN ;
 int CDC_A_MICB_1_INT_RBIAS ;
 int MICB_1_EN_BYP_CAP_MASK ;
 int MICB_1_EN_OPA_STG2_TAIL_CURR_1_60UA ;
 int MICB_1_EN_OPA_STG2_TAIL_CURR_MASK ;
 int MICB_1_EN_PULL_DOWN_EN_MASK ;
 int MICB_1_INT_TX2_INT_RBIAS_EN_ENABLE ;
 int MICB_1_INT_TX2_INT_RBIAS_EN_MASK ;


 int pm8916_wcd_analog_micbias_enable (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int ) ;

__attribute__((used)) static int pm8916_wcd_analog_enable_micbias_int(struct snd_soc_component
       *component, int event,
       int reg, u32 cap_mode)
{

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, CDC_A_MICB_1_INT_RBIAS,
        MICB_1_INT_TX2_INT_RBIAS_EN_MASK,
        MICB_1_INT_TX2_INT_RBIAS_EN_ENABLE);
  snd_soc_component_update_bits(component, reg, MICB_1_EN_PULL_DOWN_EN_MASK, 0);
  snd_soc_component_update_bits(component, CDC_A_MICB_1_EN,
        MICB_1_EN_OPA_STG2_TAIL_CURR_MASK,
        MICB_1_EN_OPA_STG2_TAIL_CURR_1_60UA);

  break;
 case 129:
  pm8916_wcd_analog_micbias_enable(component);
  snd_soc_component_update_bits(component, CDC_A_MICB_1_EN,
        MICB_1_EN_BYP_CAP_MASK, cap_mode);
  break;
 }

 return 0;
}
