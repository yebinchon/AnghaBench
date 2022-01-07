
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8960_priv {int regmap; int mclk; int clk_id; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;




 int WM8960_APOP1 ;
 int WM8960_BUFDCOPEN ;
 int WM8960_BUFIOEN ;
 int WM8960_POBCTRL ;
 int WM8960_POWER1 ;
 int WM8960_POWER2 ;
 int WM8960_SOFT_ST ;
 int WM8960_SYSCLK_AUTO ;
 int WM8960_VREF ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8960_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8960_configure_clocking (struct snd_soc_component*) ;
 int wm8960_set_pll (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8960_set_bias_level_out3(struct snd_soc_component *component,
          enum snd_soc_bias_level level)
{
 struct wm8960_priv *wm8960 = snd_soc_component_get_drvdata(component);
 u16 pm2 = snd_soc_component_read32(component, WM8960_POWER2);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:
  switch (snd_soc_component_get_bias_level(component)) {
  case 128:
   if (!IS_ERR(wm8960->mclk)) {
    ret = clk_prepare_enable(wm8960->mclk);
    if (ret) {
     dev_err(component->dev,
      "Failed to enable MCLK: %d\n",
      ret);
     return ret;
    }
   }

   ret = wm8960_configure_clocking(component);
   if (ret)
    return ret;


   snd_soc_component_update_bits(component, WM8960_POWER1, 0x180, 0x80);
   break;

  case 130:




   if (wm8960->clk_id == WM8960_SYSCLK_AUTO && (pm2 & 0x1))
    wm8960_set_pll(component, 0, 0);

   if (!IS_ERR(wm8960->mclk))
    clk_disable_unprepare(wm8960->mclk);
   break;

  default:
   break;
  }

  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_sync(wm8960->regmap);


   snd_soc_component_write(component, WM8960_APOP1,
          WM8960_POBCTRL | WM8960_SOFT_ST |
          WM8960_BUFDCOPEN | WM8960_BUFIOEN);


   snd_soc_component_update_bits(component, WM8960_POWER1, 0x80, 0x80);
   msleep(100);


   snd_soc_component_update_bits(component, WM8960_POWER1, WM8960_VREF,
         WM8960_VREF);


   snd_soc_component_write(component, WM8960_APOP1, WM8960_BUFIOEN);
  }


  snd_soc_component_update_bits(component, WM8960_POWER1, 0x180, 0x100);
  break;

 case 131:

  snd_soc_component_write(component, WM8960_APOP1,
        WM8960_POBCTRL | WM8960_SOFT_ST |
        WM8960_BUFDCOPEN | WM8960_BUFIOEN);


  snd_soc_component_write(component, WM8960_POWER1, 0);
  msleep(600);
  break;
 }

 return 0;
}
