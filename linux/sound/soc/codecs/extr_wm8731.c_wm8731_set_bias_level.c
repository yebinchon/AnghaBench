
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8731_priv {int regmap; int supplies; int mclk; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8731_PWR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8731_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8731_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(component);
 int ret;
 u16 reg;

 switch (level) {
 case 130:
  if (wm8731->mclk) {
   ret = clk_prepare_enable(wm8731->mclk);
   if (ret)
    return ret;
  }
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8731->supplies),
          wm8731->supplies);
   if (ret != 0)
    return ret;

   regcache_sync(wm8731->regmap);
  }


  reg = snd_soc_component_read32(component, WM8731_PWR) & 0xff7f;
  snd_soc_component_write(component, WM8731_PWR, reg | 0x0040);
  break;
 case 131:
  if (wm8731->mclk)
   clk_disable_unprepare(wm8731->mclk);
  snd_soc_component_write(component, WM8731_PWR, 0xffff);
  regulator_bulk_disable(ARRAY_SIZE(wm8731->supplies),
           wm8731->supplies);
  regcache_mark_dirty(wm8731->regmap);
  break;
 }
 return 0;
}
