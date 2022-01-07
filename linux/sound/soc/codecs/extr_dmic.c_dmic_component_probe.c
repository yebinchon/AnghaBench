
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct dmic {scalar_t__ wakeup_delay; scalar_t__ modeswitch_delay; int gpio_en; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX_MODESWITCH_DELAY ;
 int PTR_ERR (int ) ;
 int device_property_read_u32 (int ,char*,scalar_t__*) ;
 int devm_gpiod_get_optional (int ,char*,int ) ;
 struct dmic* devm_kzalloc (int ,int,int ) ;
 scalar_t__ modeswitch_delay ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct dmic*) ;
 scalar_t__ wakeup_delay ;

__attribute__((used)) static int dmic_component_probe(struct snd_soc_component *component)
{
 struct dmic *dmic;

 dmic = devm_kzalloc(component->dev, sizeof(*dmic), GFP_KERNEL);
 if (!dmic)
  return -ENOMEM;

 dmic->gpio_en = devm_gpiod_get_optional(component->dev,
      "dmicen", GPIOD_OUT_LOW);
 if (IS_ERR(dmic->gpio_en))
  return PTR_ERR(dmic->gpio_en);

 device_property_read_u32(component->dev, "wakeup-delay-ms",
     &dmic->wakeup_delay);
 device_property_read_u32(component->dev, "modeswitch-delay-ms",
     &dmic->modeswitch_delay);
 if (wakeup_delay)
  dmic->wakeup_delay = wakeup_delay;
 if (modeswitch_delay)
  dmic->modeswitch_delay = modeswitch_delay;

 if (dmic->modeswitch_delay > MAX_MODESWITCH_DELAY)
  dmic->modeswitch_delay = MAX_MODESWITCH_DELAY;

 snd_soc_component_set_drvdata(component, dmic);

 return 0;
}
