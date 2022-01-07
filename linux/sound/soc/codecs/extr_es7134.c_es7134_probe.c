
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct es7134_data {TYPE_1__* chip; } ;
struct TYPE_2__ {int dai_drv; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct es7134_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int) ;
 int es7134_component_driver ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct es7134_data*) ;

__attribute__((used)) static int es7134_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct es7134_data *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 platform_set_drvdata(pdev, priv);

 priv->chip = of_device_get_match_data(dev);
 if (!priv->chip) {
  dev_err(dev, "failed to match device\n");
  return -ENODEV;
 }

 return devm_snd_soc_register_component(&pdev->dev,
          &es7134_component_driver,
          priv->chip->dai_drv, 1);
}
