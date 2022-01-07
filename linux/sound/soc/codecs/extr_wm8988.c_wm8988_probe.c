
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int WM8988_RADC ;
 int WM8988_RDAC ;
 int WM8988_RINVOL ;
 int WM8988_ROUT1V ;
 int WM8988_ROUT2V ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8988_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8988_probe(struct snd_soc_component *component)
{
 int ret = 0;

 ret = wm8988_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset\n");
  return ret;
 }


 snd_soc_component_update_bits(component, WM8988_RADC, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8988_RDAC, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8988_ROUT1V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8988_ROUT2V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8988_RINVOL, 0x0100, 0x0100);

 return 0;
}
