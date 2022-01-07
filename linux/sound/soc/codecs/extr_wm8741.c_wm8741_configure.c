
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int diff_mode; } ;
struct wm8741_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8741_DACLLSB_ATTENUATION ;
 int WM8741_DACLMSB_ATTENUATION ;
 int WM8741_DACRLSB_ATTENUATION ;
 int WM8741_DACRMSB_ATTENUATION ;
 int WM8741_DIFF_MASK ;




 int WM8741_DIFF_SHIFT ;
 int WM8741_MODE_CONTROL_2 ;
 int WM8741_UPDATELL ;
 int WM8741_UPDATELM ;
 int WM8741_UPDATERL ;
 int WM8741_UPDATERM ;
 struct wm8741_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8741_configure(struct snd_soc_component *component)
{
 struct wm8741_priv *wm8741 = snd_soc_component_get_drvdata(component);


 switch (wm8741->pdata.diff_mode) {
 case 129:
 case 128:
 case 131:
 case 130:
  snd_soc_component_update_bits(component, WM8741_MODE_CONTROL_2,
    WM8741_DIFF_MASK,
    wm8741->pdata.diff_mode << WM8741_DIFF_SHIFT);
  break;
 default:
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, WM8741_DACLLSB_ATTENUATION,
   WM8741_UPDATELL, WM8741_UPDATELL);
 snd_soc_component_update_bits(component, WM8741_DACLMSB_ATTENUATION,
   WM8741_UPDATELM, WM8741_UPDATELM);
 snd_soc_component_update_bits(component, WM8741_DACRLSB_ATTENUATION,
   WM8741_UPDATERL, WM8741_UPDATERL);
 snd_soc_component_update_bits(component, WM8741_DACRMSB_ATTENUATION,
   WM8741_UPDATERM, WM8741_UPDATERM);

 return 0;
}
