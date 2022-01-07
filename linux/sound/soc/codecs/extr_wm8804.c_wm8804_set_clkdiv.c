
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8804_priv {int mclk_div; } ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 int WM8804_PLL5 ;
 int dev_err (int ,char*,int) ;
 struct wm8804_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8804_set_clkdiv(struct snd_soc_dai *dai,
        int div_id, int div)
{
 struct snd_soc_component *component;
 struct wm8804_priv *wm8804;

 component = dai->component;
 switch (div_id) {
 case 129:
  snd_soc_component_update_bits(component, WM8804_PLL5, 0x30,
        (div & 0x3) << 4);
  break;
 case 128:
  wm8804 = snd_soc_component_get_drvdata(component);
  wm8804->mclk_div = div;
  break;
 default:
  dev_err(dai->dev, "Unknown clock divider: %d\n", div_id);
  return -EINVAL;
 }
 return 0;
}
