
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8961_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int WM8961_CLOCKING1 ;
 int WM8961_MCLKDIV ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 struct wm8961_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8961_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq,
        int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8961_priv *wm8961 = snd_soc_component_get_drvdata(component);
 u16 reg = snd_soc_component_read32(component, WM8961_CLOCKING1);

 if (freq > 33000000) {
  dev_err(component->dev, "MCLK must be <33MHz\n");
  return -EINVAL;
 }

 if (freq > 16500000) {
  dev_dbg(component->dev, "Using MCLK/2 for %dHz MCLK\n", freq);
  reg |= WM8961_MCLKDIV;
  freq /= 2;
 } else {
  dev_dbg(component->dev, "Using MCLK/1 for %dHz MCLK\n", freq);
  reg &= ~WM8961_MCLKDIV;
 }

 snd_soc_component_write(component, WM8961_CLOCKING1, reg);

 wm8961->sysclk = freq;

 return 0;
}
