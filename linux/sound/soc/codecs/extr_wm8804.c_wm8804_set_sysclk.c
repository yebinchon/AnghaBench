
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 int WM8804_PLL6 ;


 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8804_set_sysclk(struct snd_soc_dai *dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component;

 component = dai->component;

 switch (clk_id) {
 case 129:
  if ((freq >= 10000000 && freq <= 14400000)
    || (freq >= 16280000 && freq <= 27000000))
   snd_soc_component_update_bits(component, WM8804_PLL6, 0x80, 0x80);
  else {
   dev_err(dai->dev, "OSCCLOCK is not within the "
    "recommended range: %uHz\n", freq);
   return -EINVAL;
  }
  break;
 case 128:
  snd_soc_component_update_bits(component, WM8804_PLL6, 0x80, 0);
  break;
 case 131:
  snd_soc_component_update_bits(component, WM8804_PLL6, 0x8, 0);
  break;
 case 130:
  snd_soc_component_update_bits(component, WM8804_PLL6, 0x8, 0x8);
  break;
 default:
  dev_err(dai->dev, "Unknown clock source: %d\n", clk_id);
  return -EINVAL;
 }

 return 0;
}
