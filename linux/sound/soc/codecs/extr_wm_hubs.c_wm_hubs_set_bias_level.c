
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int lineout2p_ena; int lineout2_se; int lineout2n_ena; int lineout1p_ena; int lineout1_se; int lineout1n_ena; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;




 int WM8993_INPUTS_CLAMP ;
 int WM8993_INPUTS_CLAMP_REG ;
 int WM8993_LINEOUT1N_ENA ;
 int WM8993_LINEOUT1P_ENA ;
 int WM8993_LINEOUT2N_ENA ;
 int WM8993_LINEOUT2P_ENA ;
 int WM8993_POWER_MANAGEMENT_3 ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

void wm_hubs_set_bias_level(struct snd_soc_component *component,
       enum snd_soc_bias_level level)
{
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 int mask, val;

 switch (level) {
 case 128:

  snd_soc_component_update_bits(component, WM8993_INPUTS_CLAMP_REG,
        WM8993_INPUTS_CLAMP, WM8993_INPUTS_CLAMP);
  break;

 case 129:

  val = 0;
  mask = 0;

  if (hubs->lineout1_se)
   mask |= WM8993_LINEOUT1N_ENA | WM8993_LINEOUT1P_ENA;

  if (hubs->lineout2_se)
   mask |= WM8993_LINEOUT2N_ENA | WM8993_LINEOUT2P_ENA;

  if (hubs->lineout1_se && hubs->lineout1n_ena)
   val |= WM8993_LINEOUT1N_ENA;

  if (hubs->lineout1_se && hubs->lineout1p_ena)
   val |= WM8993_LINEOUT1P_ENA;

  if (hubs->lineout2_se && hubs->lineout2n_ena)
   val |= WM8993_LINEOUT2N_ENA;

  if (hubs->lineout2_se && hubs->lineout2p_ena)
   val |= WM8993_LINEOUT2P_ENA;

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_3,
        mask, val);


  snd_soc_component_update_bits(component, WM8993_INPUTS_CLAMP_REG,
        WM8993_INPUTS_CLAMP, 0);
  break;

 default:
  break;
 }
}
