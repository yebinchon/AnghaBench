
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mixer_control {scalar_t__ shift; int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int EINVAL ;
 int WM8994_AIF1ADC1L_DRC_ENA_MASK ;
 int WM8994_AIF1ADC1R_DRC_ENA_MASK ;
 int WM8994_AIF1DAC1_DRC_ENA_MASK ;
 scalar_t__ WM8994_AIF1DAC1_DRC_ENA_SHIFT ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8994_put_drc_sw(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int mask, ret;


 if (mc->shift == WM8994_AIF1DAC1_DRC_ENA_SHIFT)
  mask = WM8994_AIF1ADC1L_DRC_ENA_MASK |
   WM8994_AIF1ADC1R_DRC_ENA_MASK;
 else
  mask = WM8994_AIF1DAC1_DRC_ENA_MASK;

 ret = snd_soc_component_read32(component, mc->reg);
 if (ret < 0)
  return ret;
 if (ret & mask)
  return -EINVAL;

 return snd_soc_put_volsw(kcontrol, ucontrol);
}
