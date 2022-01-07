
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int * cur_fw; struct wm8994* wm8994; } ;
struct wm8994 {int type; int revision; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
 int WM8958_CHARGE_PUMP_2 ;
 int WM8958_CP_DISCH ;
 int WM8958_MICB1_MODE ;
 int WM8958_MICB2_MODE ;
 int WM8958_MICBIAS1 ;
 int WM8958_MICBIAS2 ;
 int WM8994_ANTIPOP_1 ;
 int WM8994_LINEOUT1_DISCH ;
 int WM8994_LINEOUT2_DISCH ;
 int active_dereference (struct snd_soc_component*) ;
 int active_reference (struct snd_soc_component*) ;
 int const snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm_hubs_set_bias_level (struct snd_soc_component*,int) ;

__attribute__((used)) static int wm8994_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;

 wm_hubs_set_bias_level(component, level);

 switch (level) {
 case 132:
  break;

 case 131:

  switch (control->type) {
  case 128:
  case 129:
   snd_soc_component_update_bits(component, WM8958_MICBIAS1,
         WM8958_MICB1_MODE, 0);
   snd_soc_component_update_bits(component, WM8958_MICBIAS2,
         WM8958_MICB2_MODE, 0);
   break;
  default:
   break;
  }

  if (snd_soc_component_get_bias_level(component) == 130)
   active_reference(component);
  break;

 case 130:
  if (snd_soc_component_get_bias_level(component) == 133) {
   switch (control->type) {
   case 128:
    if (control->revision == 0) {

     snd_soc_component_update_bits(component,
           WM8958_CHARGE_PUMP_2,
           WM8958_CP_DISCH,
           WM8958_CP_DISCH);
    }
    break;

   default:
    break;
   }


   snd_soc_component_update_bits(component, WM8994_ANTIPOP_1,
         WM8994_LINEOUT1_DISCH |
         WM8994_LINEOUT2_DISCH,
         WM8994_LINEOUT1_DISCH |
         WM8994_LINEOUT2_DISCH);
  }

  if (snd_soc_component_get_bias_level(component) == 131)
   active_dereference(component);


  switch (control->type) {
  case 128:
  case 129:
   snd_soc_component_update_bits(component, WM8958_MICBIAS1,
         WM8958_MICB1_MODE,
         WM8958_MICB1_MODE);
   snd_soc_component_update_bits(component, WM8958_MICBIAS2,
         WM8958_MICB2_MODE,
         WM8958_MICB2_MODE);
   break;
  default:
   break;
  }
  break;

 case 133:
  if (snd_soc_component_get_bias_level(component) == 130)
   wm8994->cur_fw = ((void*)0);
  break;
 }

 return 0;
}
