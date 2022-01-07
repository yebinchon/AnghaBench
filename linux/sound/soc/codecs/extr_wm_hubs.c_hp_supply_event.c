
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int hp_startup_mode; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;




 int WM8993_ANALOGUE_HP_0 ;
 int WM8993_CHARGE_PUMP_1 ;
 int WM8993_CP_ENA ;
 int WM8993_HPOUT1L_DLY ;
 int WM8993_HPOUT1L_ENA ;
 int WM8993_HPOUT1R_DLY ;
 int WM8993_HPOUT1R_ENA ;
 int WM8993_POWER_MANAGEMENT_1 ;
 int dev_err (int ,char*,int ) ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int hp_supply_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  switch (hubs->hp_startup_mode) {
  case 0:
   break;
  case 1:

   snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
         WM8993_HPOUT1L_ENA |
         WM8993_HPOUT1R_ENA,
         WM8993_HPOUT1L_ENA |
         WM8993_HPOUT1R_ENA);


   snd_soc_component_update_bits(component, WM8993_ANALOGUE_HP_0,
         WM8993_HPOUT1L_DLY |
         WM8993_HPOUT1R_DLY,
         WM8993_HPOUT1L_DLY |
         WM8993_HPOUT1R_DLY);
   break;
  default:
   dev_err(component->dev, "Unknown HP startup mode %d\n",
    hubs->hp_startup_mode);
   break;
  }
  break;

 case 129:
  snd_soc_component_update_bits(component, WM8993_CHARGE_PUMP_1,
        WM8993_CP_ENA, 0);
  break;
 }

 return 0;
}
