
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct twl6040_data {scalar_t__ plug_irq; int mutex; TYPE_1__ hs_jack; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct platform_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int SND_SOC_BIAS_STANDBY ;
 int dev_err (int ,char*,int) ;
 struct twl6040_data* devm_kzalloc (int ,int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct snd_soc_component*) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct twl6040_data*) ;
 struct platform_device* to_platform_device (int ) ;
 int twl6040_accessory_work ;
 int twl6040_audio_handler ;
 int twl6040_init_chip (struct snd_soc_component*) ;

__attribute__((used)) static int twl6040_probe(struct snd_soc_component *component)
{
 struct twl6040_data *priv;
 struct platform_device *pdev = to_platform_device(component->dev);
 int ret = 0;

 priv = devm_kzalloc(component->dev, sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;

 snd_soc_component_set_drvdata(component, priv);

 priv->component = component;

 priv->plug_irq = platform_get_irq(pdev, 0);
 if (priv->plug_irq < 0)
  return priv->plug_irq;

 INIT_DELAYED_WORK(&priv->hs_jack.work, twl6040_accessory_work);

 mutex_init(&priv->mutex);

 ret = request_threaded_irq(priv->plug_irq, ((void*)0),
     twl6040_audio_handler,
     IRQF_NO_SUSPEND | IRQF_ONESHOT,
     "twl6040_irq_plug", component);
 if (ret) {
  dev_err(component->dev, "PLUG IRQ request failed: %d\n", ret);
  return ret;
 }

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);
 twl6040_init_chip(component);

 return 0;
}
