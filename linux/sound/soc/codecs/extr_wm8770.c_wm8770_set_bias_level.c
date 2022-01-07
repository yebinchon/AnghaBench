
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8770_priv {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8770_PWDNCTRL ;
 int dev_err (int ,char*,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8770_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8770_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 int ret;
 struct wm8770_priv *wm8770;

 wm8770 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8770->supplies),
          wm8770->supplies);
   if (ret) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }

   regcache_sync(wm8770->regmap);


   snd_soc_component_write(component, WM8770_PWDNCTRL, 0);
  }
  break;
 case 131:

  snd_soc_component_write(component, WM8770_PWDNCTRL, 1);
  regulator_bulk_disable(ARRAY_SIZE(wm8770->supplies),
           wm8770->supplies);
  break;
 }

 return 0;
}
