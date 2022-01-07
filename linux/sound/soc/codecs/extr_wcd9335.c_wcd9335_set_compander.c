
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wcd9335_codec {int* comp_enabled; } ;
struct soc_mixer_control {int shift; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;






 int WCD9335_HPH_GAIN_SRC_SEL_COMPANDER ;
 int WCD9335_HPH_GAIN_SRC_SEL_MASK ;
 int WCD9335_HPH_GAIN_SRC_SEL_REGISTER ;
 int WCD9335_HPH_L_EN ;
 int WCD9335_HPH_R_EN ;
 int WCD9335_SE_LO_LO3_GAIN ;
 int WCD9335_SE_LO_LO4_GAIN ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wcd9335_set_compander(struct snd_kcontrol *kc,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kc);
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 int comp = ((struct soc_mixer_control *) kc->private_value)->shift;
 int value = ucontrol->value.integer.value[0];
 int sel;

 wcd->comp_enabled[comp] = value;
 sel = value ? WCD9335_HPH_GAIN_SRC_SEL_COMPANDER :
  WCD9335_HPH_GAIN_SRC_SEL_REGISTER;


 switch (comp) {
 case 131:

  snd_soc_component_update_bits(component, WCD9335_HPH_L_EN,
          WCD9335_HPH_GAIN_SRC_SEL_MASK, sel);
  break;
 case 130:
  snd_soc_component_update_bits(component, WCD9335_HPH_R_EN,
          WCD9335_HPH_GAIN_SRC_SEL_MASK, sel);
  break;
 case 129:
  snd_soc_component_update_bits(component, WCD9335_SE_LO_LO3_GAIN,
          WCD9335_HPH_GAIN_SRC_SEL_MASK, sel);
  break;
 case 128:
  snd_soc_component_update_bits(component, WCD9335_SE_LO_LO4_GAIN,
          WCD9335_HPH_GAIN_SRC_SEL_MASK, sel);
  break;
 default:
  break;
 };

 return 0;
}
