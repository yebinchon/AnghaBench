
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {scalar_t__ reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int EINVAL ;
 int WCD9335_CDC_RX0_RX_PATH_CFG0 ;
 scalar_t__ WCD9335_CDC_RX0_RX_PATH_SEC0 ;
 int WCD9335_CDC_RX1_RX_PATH_CFG0 ;
 scalar_t__ WCD9335_CDC_RX1_RX_PATH_SEC0 ;
 int WCD9335_CDC_RX2_RX_PATH_CFG0 ;
 scalar_t__ WCD9335_CDC_RX2_RX_PATH_SEC0 ;
 int WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN ;
 int WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wcd9335_int_dem_inp_mux_put(struct snd_kcontrol *kc,
     struct snd_ctl_elem_value *ucontrol)
{
 struct soc_enum *e = (struct soc_enum *)kc->private_value;
 struct snd_soc_component *component;
 int reg, val;

 component = snd_soc_dapm_kcontrol_component(kc);
 val = ucontrol->value.enumerated.item[0];

 if (e->reg == WCD9335_CDC_RX0_RX_PATH_SEC0)
  reg = WCD9335_CDC_RX0_RX_PATH_CFG0;
 else if (e->reg == WCD9335_CDC_RX1_RX_PATH_SEC0)
  reg = WCD9335_CDC_RX1_RX_PATH_CFG0;
 else if (e->reg == WCD9335_CDC_RX2_RX_PATH_SEC0)
  reg = WCD9335_CDC_RX2_RX_PATH_CFG0;
 else
  return -EINVAL;


 snd_soc_component_update_bits(component, reg,
    WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK,
    val ? WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN : 0);

 return snd_soc_dapm_put_enum_double(kc, ucontrol);
}
