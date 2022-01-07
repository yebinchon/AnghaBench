
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8983_priv {unsigned int sysclk; } ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8983_CLKSEL ;
 int WM8983_CLKSEL_MASK ;


 int WM8983_CLOCK_GEN_CONTROL ;
 int dev_err (int ,char*,int) ;
 struct wm8983_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wm8983_set_sysclk(struct snd_soc_dai *dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8983_priv *wm8983 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 129:
  snd_soc_component_update_bits(component, WM8983_CLOCK_GEN_CONTROL,
        WM8983_CLKSEL_MASK, 0);
  break;
 case 128:
  snd_soc_component_update_bits(component, WM8983_CLOCK_GEN_CONTROL,
        WM8983_CLKSEL_MASK, WM8983_CLKSEL);
  break;
 default:
  dev_err(dai->dev, "Unknown clock source: %d\n", clk_id);
  return -EINVAL;
 }

 wm8983->sysclk = freq;
 return 0;
}
