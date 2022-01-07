
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8960_priv {unsigned int sysclk; int clk_id; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8960_CLOCK1 ;



 struct wm8960_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int const) ;

__attribute__((used)) static int wm8960_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
     unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8960_priv *wm8960 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 129:
  snd_soc_component_update_bits(component, WM8960_CLOCK1,
     0x1, 129);
  break;
 case 128:
  snd_soc_component_update_bits(component, WM8960_CLOCK1,
     0x1, 128);
  break;
 case 130:
  break;
 default:
  return -EINVAL;
 }

 wm8960->sysclk = freq;
 wm8960->clk_id = clk_id;

 return 0;
}
