
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int sysclk; unsigned int sysclk_rate; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8962_CLOCKING2 ;


 int WM8962_SYSCLK_SRC_MASK ;
 int WM8962_SYSCLK_SRC_SHIFT ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8962_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
     unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);
 int src;

 switch (clk_id) {
 case 128:
  wm8962->sysclk = 128;
  src = 0;
  break;
 case 129:
  wm8962->sysclk = 129;
  src = 1 << WM8962_SYSCLK_SRC_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, WM8962_CLOCKING2, WM8962_SYSCLK_SRC_MASK,
       src);

 wm8962->sysclk_rate = freq;

 return 0;
}
