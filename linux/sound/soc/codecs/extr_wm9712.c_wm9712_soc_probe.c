
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm9712_priv {struct regmap* ac97; TYPE_1__* mfd_pdata; } ;
struct snd_soc_component {int dev; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; struct regmap* ac97; } ;


 int AC97_VIDEO ;
 int CONFIG_SND_SOC_AC97_BUS ;
 int ENXIO ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int WM9712_VENDOR_ID ;
 int WM9712_VENDOR_ID_MASK ;
 int dev_err (int ,char*,int) ;
 struct regmap* regmap_init_ac97 (struct regmap*,int *) ;
 struct wm9712_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,struct regmap*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_free_ac97_component (struct regmap*) ;
 struct regmap* snd_soc_new_ac97_component (struct snd_soc_component*,int ,int ) ;
 int wm9712_regmap_config ;

__attribute__((used)) static int wm9712_soc_probe(struct snd_soc_component *component)
{
 struct wm9712_priv *wm9712 = snd_soc_component_get_drvdata(component);
 struct regmap *regmap;

 if (wm9712->mfd_pdata) {
  wm9712->ac97 = wm9712->mfd_pdata->ac97;
  regmap = wm9712->mfd_pdata->regmap;
 } else if (IS_ENABLED(CONFIG_SND_SOC_AC97_BUS)) {
  int ret;

  wm9712->ac97 = snd_soc_new_ac97_component(component, WM9712_VENDOR_ID,
            WM9712_VENDOR_ID_MASK);
  if (IS_ERR(wm9712->ac97)) {
   ret = PTR_ERR(wm9712->ac97);
   dev_err(component->dev,
    "Failed to register AC97 codec: %d\n", ret);
   return ret;
  }

  regmap = regmap_init_ac97(wm9712->ac97, &wm9712_regmap_config);
  if (IS_ERR(regmap)) {
   snd_soc_free_ac97_component(wm9712->ac97);
   return PTR_ERR(regmap);
  }
 } else {
  return -ENXIO;
 }

 snd_soc_component_init_regmap(component, regmap);


 snd_soc_component_update_bits(component, AC97_VIDEO, 0x3000, 0x3000);

 return 0;
}
