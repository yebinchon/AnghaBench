
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {int reg; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 unsigned int WCD9335_CDC_TX0_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX1_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX2_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX3_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX4_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX5_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX6_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX7_TX_PATH_CFG0 ;
 unsigned int WCD9335_CDC_TX8_TX_PATH_CFG0 ;
 int WCD9335_CDC_TX_ADC_AMIC_DMIC_SEL_MASK ;
 unsigned int WCD9335_CDC_TX_ADC_AMIC_SEL ;
 unsigned int WCD9335_CDC_TX_ADC_DMIC_SEL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int ,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int wcd9335_put_dec_enum(struct snd_kcontrol *kc,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kc);
 struct snd_soc_component *component = snd_soc_dapm_to_component(dapm);
 struct soc_enum *e = (struct soc_enum *)kc->private_value;
 unsigned int val, reg, sel;

 val = ucontrol->value.enumerated.item[0];

 switch (e->reg) {
 case 136:
  reg = WCD9335_CDC_TX0_TX_PATH_CFG0;
  break;
 case 135:
  reg = WCD9335_CDC_TX1_TX_PATH_CFG0;
  break;
 case 134:
  reg = WCD9335_CDC_TX2_TX_PATH_CFG0;
  break;
 case 133:
  reg = WCD9335_CDC_TX3_TX_PATH_CFG0;
  break;
 case 132:
  reg = WCD9335_CDC_TX4_TX_PATH_CFG0;
  break;
 case 131:
  reg = WCD9335_CDC_TX5_TX_PATH_CFG0;
  break;
 case 130:
  reg = WCD9335_CDC_TX6_TX_PATH_CFG0;
  break;
 case 129:
  reg = WCD9335_CDC_TX7_TX_PATH_CFG0;
  break;
 case 128:
  reg = WCD9335_CDC_TX8_TX_PATH_CFG0;
  break;
 default:
  return -EINVAL;
 }


 sel = val ? WCD9335_CDC_TX_ADC_AMIC_SEL : WCD9335_CDC_TX_ADC_DMIC_SEL;
 snd_soc_component_update_bits(component, reg,
          WCD9335_CDC_TX_ADC_AMIC_DMIC_SEL_MASK,
          sel);

 return snd_soc_dapm_put_enum_double(kc, ucontrol);
}
