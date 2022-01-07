
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int RT5665_NG2_DIS ;
 int RT5665_NG2_EN ;
 int RT5665_NG2_EN_MASK ;
 int RT5665_STO_NG2_CTRL_1 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int rt5665_hp_vol_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int ret = snd_soc_put_volsw(kcontrol, ucontrol);

 if (snd_soc_component_read32(component, RT5665_STO_NG2_CTRL_1) & RT5665_NG2_EN) {
  snd_soc_component_update_bits(component, RT5665_STO_NG2_CTRL_1,
   RT5665_NG2_EN_MASK, RT5665_NG2_DIS);
  snd_soc_component_update_bits(component, RT5665_STO_NG2_CTRL_1,
   RT5665_NG2_EN_MASK, RT5665_NG2_EN);
 }

 return ret;
}
