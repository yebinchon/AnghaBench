
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct max9759 {int is_mute; TYPE_1__* gpiod_gain; scalar_t__ gain; TYPE_1__* gpiod_mute; TYPE_1__* gpiod_shutdown; } ;
struct TYPE_4__ {int ndescs; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (struct device*,char*,int) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 TYPE_1__* devm_gpiod_get_array (struct device*,char*,int ) ;
 struct max9759* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 int max9759_component_driver ;
 int platform_set_drvdata (struct platform_device*,struct max9759*) ;

__attribute__((used)) static int max9759_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct max9759 *priv;
 int err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 priv->gpiod_shutdown = devm_gpiod_get(dev, "shutdown", GPIOD_OUT_HIGH);
 if (IS_ERR(priv->gpiod_shutdown)) {
  err = PTR_ERR(priv->gpiod_shutdown);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'shutdown' gpio: %d", err);
  return err;
 }

 priv->gpiod_mute = devm_gpiod_get(dev, "mute", GPIOD_OUT_HIGH);
 if (IS_ERR(priv->gpiod_mute)) {
  err = PTR_ERR(priv->gpiod_mute);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'mute' gpio: %d", err);
  return err;
 }
 priv->is_mute = 1;

 priv->gpiod_gain = devm_gpiod_get_array(dev, "gain", GPIOD_OUT_HIGH);
 if (IS_ERR(priv->gpiod_gain)) {
  err = PTR_ERR(priv->gpiod_gain);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'gain' gpios: %d", err);
  return err;
 }
 priv->gain = 0;

 if (priv->gpiod_gain->ndescs != 2) {
  dev_err(dev, "Invalid 'gain' gpios count: %d",
   priv->gpiod_gain->ndescs);
  return -EINVAL;
 }

 return devm_snd_soc_register_component(dev, &max9759_component_driver,
            ((void*)0), 0);
}
