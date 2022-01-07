
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2305 {int gpiod_shutdown; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct ssm2305* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ssm2305*) ;
 int ssm2305_component_driver ;

__attribute__((used)) static int ssm2305_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ssm2305 *priv;
 int err;


 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);


 priv->gpiod_shutdown = devm_gpiod_get(dev, "shutdown",
           GPIOD_OUT_LOW);
 if (IS_ERR(priv->gpiod_shutdown)) {
  err = PTR_ERR(priv->gpiod_shutdown);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'shutdown' gpio: %d\n",
    err);
  return err;
 }

 return devm_snd_soc_register_component(dev, &ssm2305_component_driver,
            ((void*)0), 0);
}
