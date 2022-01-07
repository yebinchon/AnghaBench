
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int sysclk; int asyncclk; int* aif_async; } ;
struct snd_soc_component {int dev; } ;


 int BUG () ;
 int EINVAL ;





 int WM5100_CLK_32K_SRC_MASK ;






 int WM5100_CLOCKING_1 ;
 int WM5100_CLOCKING_3 ;
 int WM5100_CLOCKING_7 ;
 int WM5100_MISC_GPIO_1 ;
 int WM5100_OPCLK_SEL_MASK ;
 int WM5100_SYSCLK_FREQ_MASK ;
 int WM5100_SYSCLK_FREQ_SHIFT ;
 int WM5100_SYSCLK_SRC_MASK ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,int) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 int wm5100_alloc_sr (struct snd_soc_component*,int) ;
 int wm5100_free_sr (struct snd_soc_component*,int) ;

__attribute__((used)) static int wm5100_set_sysclk(struct snd_soc_component *component, int clk_id,
        int source, unsigned int freq, int dir)
{
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);
 int *rate_store;
 int fval, audio_rate, ret, reg;

 switch (clk_id) {
 case 128:
  reg = WM5100_CLOCKING_3;
  rate_store = &wm5100->sysclk;
  break;
 case 130:
  reg = WM5100_CLOCKING_7;
  rate_store = &wm5100->asyncclk;
  break;
 case 134:

  switch (source) {
  case 137:
  case 136:
  case 135:
   snd_soc_component_update_bits(component, WM5100_CLOCKING_1,
         WM5100_CLK_32K_SRC_MASK,
         source);
   break;
  default:
   return -EINVAL;
  }
  return 0;

 case 133:
 case 132:
 case 131:

  switch (source) {
  case 135:
   wm5100->aif_async[clk_id - 1] = 0;
   break;
  case 138:
   wm5100->aif_async[clk_id - 1] = 1;
   break;
  default:
   dev_err(component->dev, "Invalid source %d\n", source);
   return -EINVAL;
  }
  return 0;

 case 129:
  switch (freq) {
  case 5644800:
  case 6144000:
   snd_soc_component_update_bits(component, WM5100_MISC_GPIO_1,
         WM5100_OPCLK_SEL_MASK, 0);
   break;
  case 11289600:
  case 12288000:
   snd_soc_component_update_bits(component, WM5100_MISC_GPIO_1,
         WM5100_OPCLK_SEL_MASK, 0);
   break;
  case 22579200:
  case 24576000:
   snd_soc_component_update_bits(component, WM5100_MISC_GPIO_1,
         WM5100_OPCLK_SEL_MASK, 0);
   break;
  default:
   dev_err(component->dev, "Unsupported OPCLK %dHz\n",
    freq);
   return -EINVAL;
  }
  return 0;

 default:
  dev_err(component->dev, "Unknown clock %d\n", clk_id);
  return -EINVAL;
 }

 switch (source) {
 case 135:
 case 138:
  dev_err(component->dev, "Invalid source %d\n", source);
  return -EINVAL;
 }

 switch (freq) {
 case 5644800:
 case 6144000:
  fval = 0;
  break;
 case 11289600:
 case 12288000:
  fval = 1;
  break;
 case 22579200:
 case 24576000:
  fval = 2;
  break;
 default:
  dev_err(component->dev, "Invalid clock rate: %d\n", freq);
  return -EINVAL;
 }

 switch (freq) {
 case 5644800:
 case 11289600:
 case 22579200:
  audio_rate = 44100;
  break;

 case 6144000:
 case 12288000:
 case 24576000:
  audio_rate = 48000;
  break;

 default:
  BUG();
  audio_rate = 0;
  break;
 }





 snd_soc_component_update_bits(component, reg, WM5100_SYSCLK_FREQ_MASK |
       WM5100_SYSCLK_SRC_MASK,
       fval << WM5100_SYSCLK_FREQ_SHIFT | source);





 if (clk_id == 128) {
  dev_dbg(component->dev, "Setting primary audio rate to %dHz",
   audio_rate);
  if (0 && *rate_store)
   wm5100_free_sr(component, audio_rate);
  ret = wm5100_alloc_sr(component, audio_rate);
  if (ret != 0)
   dev_warn(component->dev, "Primary audio slot is %d\n",
     ret);
 }

 *rate_store = freq;

 return 0;
}
