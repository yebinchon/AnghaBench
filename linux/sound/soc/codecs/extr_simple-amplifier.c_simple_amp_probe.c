
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_amp {int gpiod_enable; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct simple_amp* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct simple_amp*) ;
 int simple_amp_component_driver ;

__attribute__((used)) static int simple_amp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct simple_amp *priv;
 int err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;
 platform_set_drvdata(pdev, priv);

 priv->gpiod_enable = devm_gpiod_get_optional(dev, "enable",
           GPIOD_OUT_LOW);
 if (IS_ERR(priv->gpiod_enable)) {
  err = PTR_ERR(priv->gpiod_enable);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'enable' gpio: %d", err);
  return err;
 }

 return devm_snd_soc_register_component(dev,
            &simple_amp_component_driver,
            ((void*)0), 0);
}
