
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int WM8776_DACRVOL ;
 int WM8776_HPRVOL ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8776_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8776_probe(struct snd_soc_component *component)
{
 int ret = 0;

 ret = wm8776_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }



 snd_soc_component_update_bits(component, WM8776_HPRVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8776_DACRVOL, 0x100, 0x100);

 return ret;
}
