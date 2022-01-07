
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8962_PWR_MGMT_1 ;
 int WM8962_VMID_SEL_MASK ;
 int msleep (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int wm8962_configure_bclk (struct snd_soc_component*) ;

__attribute__((used)) static int wm8962_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM8962_PWR_MGMT_1,
        WM8962_VMID_SEL_MASK, 0x80);

  wm8962_configure_bclk(component);
  break;

 case 128:

  snd_soc_component_update_bits(component, WM8962_PWR_MGMT_1,
        WM8962_VMID_SEL_MASK, 0x100);

  if (snd_soc_component_get_bias_level(component) == 131)
   msleep(100);
  break;

 case 131:
  break;
 }

 return 0;
}
