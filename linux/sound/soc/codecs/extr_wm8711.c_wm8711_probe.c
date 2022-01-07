
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int WM8711_LOUT1V ;
 int WM8711_ROUT1V ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8711_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8711_probe(struct snd_soc_component *component)
{
 int ret;

 ret = wm8711_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset\n");
  return ret;
 }


 snd_soc_component_update_bits(component, WM8711_LOUT1V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8711_ROUT1V, 0x0100, 0x0100);

 return ret;

}
