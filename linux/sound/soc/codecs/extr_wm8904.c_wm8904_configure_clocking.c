
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int sysclk_src; unsigned int mclk_rate; unsigned int fll_fout; unsigned int sysclk_rate; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;


 unsigned int WM8904_CLK_SYS_ENA ;
 int WM8904_CLOCK_RATES_0 ;
 int WM8904_CLOCK_RATES_2 ;
 int WM8904_FLL_CONTROL_1 ;
 unsigned int WM8904_FLL_ENA ;
 unsigned int WM8904_FLL_OSC_ENA ;
 unsigned int WM8904_MCLK_DIV ;
 unsigned int WM8904_SYSCLK_SRC ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8904_configure_clocking(struct snd_soc_component *component)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 unsigned int clock0, clock2, rate;


 clock2 = snd_soc_component_read32(component, WM8904_CLOCK_RATES_2);
 snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_2,
       WM8904_SYSCLK_SRC, 0);


 switch (wm8904->sysclk_src) {
 case 128:
  dev_dbg(component->dev, "Using %dHz MCLK\n", wm8904->mclk_rate);

  clock2 &= ~WM8904_SYSCLK_SRC;
  rate = wm8904->mclk_rate;


  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
        WM8904_FLL_OSC_ENA | WM8904_FLL_ENA, 0);
  break;

 case 129:
  dev_dbg(component->dev, "Using %dHz FLL clock\n",
   wm8904->fll_fout);

  clock2 |= WM8904_SYSCLK_SRC;
  rate = wm8904->fll_fout;
  break;

 default:
  dev_err(component->dev, "System clock not configured\n");
  return -EINVAL;
 }


 if (rate > 13500000) {
  clock0 = WM8904_MCLK_DIV;
  wm8904->sysclk_rate = rate / 2;
 } else {
  clock0 = 0;
  wm8904->sysclk_rate = rate;
 }

 snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_0, WM8904_MCLK_DIV,
       clock0);

 snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_2,
       WM8904_CLK_SYS_ENA | WM8904_SYSCLK_SRC, clock2);

 dev_dbg(component->dev, "CLK_SYS is %dHz\n", wm8904->sysclk_rate);

 return 0;
}
