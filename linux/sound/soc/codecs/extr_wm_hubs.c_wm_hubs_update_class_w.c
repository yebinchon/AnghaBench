
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int (* check_class_w_digital ) (struct snd_soc_component*) ;} ;
struct snd_soc_component {int dev; } ;


 int WM8993_CLASS_W_0 ;
 int WM8993_CP_DYN_FREQ ;
 int WM8993_CP_DYN_V ;
 int WM8993_LEFT_OUTPUT_VOLUME ;
 int WM8993_RIGHT_OUTPUT_VOLUME ;
 int dev_vdbg (int ,char*,char*) ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int stub1 (struct snd_soc_component*) ;
 int wm_hubs_dac_hp_direct (struct snd_soc_component*) ;

void wm_hubs_update_class_w(struct snd_soc_component *component)
{
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 int enable = WM8993_CP_DYN_V | WM8993_CP_DYN_FREQ;

 if (!wm_hubs_dac_hp_direct(component))
  enable = 0;

 if (hubs->check_class_w_digital && !hubs->check_class_w_digital(component))
  enable = 0;

 dev_vdbg(component->dev, "Class W %s\n", enable ? "enabled" : "disabled");

 snd_soc_component_update_bits(component, WM8993_CLASS_W_0,
       WM8993_CP_DYN_V | WM8993_CP_DYN_FREQ, enable);

 snd_soc_component_write(component, WM8993_LEFT_OUTPUT_VOLUME,
        snd_soc_component_read32(component, WM8993_LEFT_OUTPUT_VOLUME));
 snd_soc_component_write(component, WM8993_RIGHT_OUTPUT_VOLUME,
        snd_soc_component_read32(component, WM8993_RIGHT_OUTPUT_VOLUME));
}
