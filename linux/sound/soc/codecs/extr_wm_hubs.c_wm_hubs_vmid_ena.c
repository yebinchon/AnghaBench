
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {scalar_t__ lineout2_se; scalar_t__ lineout1_se; } ;
struct snd_soc_component {int dummy; } ;


 int WM8993_LINEOUT1N_ENA ;
 int WM8993_LINEOUT1P_ENA ;
 int WM8993_LINEOUT2N_ENA ;
 int WM8993_LINEOUT2P_ENA ;
 int WM8993_POWER_MANAGEMENT_3 ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

void wm_hubs_vmid_ena(struct snd_soc_component *component)
{
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 int val = 0;

 if (hubs->lineout1_se)
  val |= WM8993_LINEOUT1N_ENA | WM8993_LINEOUT1P_ENA;

 if (hubs->lineout2_se)
  val |= WM8993_LINEOUT2N_ENA | WM8993_LINEOUT2P_ENA;


 snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_3, val, val);
}
