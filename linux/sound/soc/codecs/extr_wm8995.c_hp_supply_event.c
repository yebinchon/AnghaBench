
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM8995_ANALOGUE_HP_1 ;
 int WM8995_CHARGE_PUMP_1 ;
 int WM8995_CP_ENA_MASK ;
 int WM8995_HPOUT1L_DLY ;
 int WM8995_HPOUT1L_DLY_MASK ;
 int WM8995_HPOUT1L_ENA ;
 int WM8995_HPOUT1L_ENA_MASK ;
 int WM8995_HPOUT1R_DLY ;
 int WM8995_HPOUT1R_DLY_MASK ;
 int WM8995_HPOUT1R_ENA ;
 int WM8995_HPOUT1R_ENA_MASK ;
 int WM8995_POWER_MANAGEMENT_1 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int hp_supply_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:

  snd_soc_component_update_bits(component, WM8995_POWER_MANAGEMENT_1,
        WM8995_HPOUT1L_ENA_MASK |
        WM8995_HPOUT1R_ENA_MASK,
        WM8995_HPOUT1L_ENA |
        WM8995_HPOUT1R_ENA);


  snd_soc_component_update_bits(component, WM8995_ANALOGUE_HP_1,
        WM8995_HPOUT1L_DLY_MASK |
        WM8995_HPOUT1R_DLY_MASK,
        WM8995_HPOUT1L_DLY |
        WM8995_HPOUT1R_DLY);
  break;
 case 129:
  snd_soc_component_update_bits(component, WM8995_CHARGE_PUMP_1,
        WM8995_CP_ENA_MASK, 0);
  break;
 }

 return 0;
}
