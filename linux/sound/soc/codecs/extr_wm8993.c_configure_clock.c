
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int sysclk_source; int mclk_rate; int sysclk_rate; int fll_fout; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int WM8993_CLOCKING_2 ;
 unsigned int WM8993_MCLK_DIV ;


 unsigned int WM8993_SYSCLK_SRC ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int configure_clock(struct snd_soc_component *component)
{
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 unsigned int reg;


 switch (wm8993->sysclk_source) {
 case 128:
  dev_dbg(component->dev, "Using %dHz MCLK\n", wm8993->mclk_rate);

  reg = snd_soc_component_read32(component, WM8993_CLOCKING_2);
  reg &= ~(WM8993_MCLK_DIV | WM8993_SYSCLK_SRC);
  if (wm8993->mclk_rate > 13500000) {
   reg |= WM8993_MCLK_DIV;
   wm8993->sysclk_rate = wm8993->mclk_rate / 2;
  } else {
   reg &= ~WM8993_MCLK_DIV;
   wm8993->sysclk_rate = wm8993->mclk_rate;
  }
  snd_soc_component_write(component, WM8993_CLOCKING_2, reg);
  break;

 case 129:
  dev_dbg(component->dev, "Using %dHz FLL clock\n",
   wm8993->fll_fout);

  reg = snd_soc_component_read32(component, WM8993_CLOCKING_2);
  reg |= WM8993_SYSCLK_SRC;
  if (wm8993->fll_fout > 13500000) {
   reg |= WM8993_MCLK_DIV;
   wm8993->sysclk_rate = wm8993->fll_fout / 2;
  } else {
   reg &= ~WM8993_MCLK_DIV;
   wm8993->sysclk_rate = wm8993->fll_fout;
  }
  snd_soc_component_write(component, WM8993_CLOCKING_2, reg);
  break;

 default:
  dev_err(component->dev, "System clock not configured\n");
  return -EINVAL;
 }

 dev_dbg(component->dev, "CLK_SYS is %dHz\n", wm8993->sysclk_rate);

 return 0;
}
