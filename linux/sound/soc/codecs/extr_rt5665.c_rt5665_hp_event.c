
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5665_HP_LOGIC_CTRL_2 ;
 int RT5665_NG2_DIS ;
 int RT5665_NG2_EN ;
 int RT5665_NG2_EN_MASK ;
 int RT5665_STO_NG2_CTRL_1 ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5665_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, RT5665_STO_NG2_CTRL_1,
   RT5665_NG2_EN_MASK, RT5665_NG2_EN);
  snd_soc_component_write(component, RT5665_HP_LOGIC_CTRL_2, 0x0003);
  break;

 case 129:
  snd_soc_component_write(component, RT5665_HP_LOGIC_CTRL_2, 0x0002);
  snd_soc_component_update_bits(component, RT5665_STO_NG2_CTRL_1,
   RT5665_NG2_EN_MASK, RT5665_NG2_DIS);
  break;

 default:
  return 0;
 }

 return 0;

}
