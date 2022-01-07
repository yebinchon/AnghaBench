
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int name; scalar_t__ start; } ;
struct pm860x_priv {int * name; scalar_t__* irq; int regmap; int i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; scalar_t__ irq_base; int regmap_companion; int regmap; int companion; int client; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ CHIP_PM8607 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int MAX_NAME_LEN ;
 int dev_err (TYPE_1__*,char*) ;
 struct pm860x_chip* dev_get_drvdata (int ) ;
 struct pm860x_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct pm860x_priv*) ;
 int pm860x_dai ;
 int soc_component_dev_pm860x ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int pm860x_codec_probe(struct platform_device *pdev)
{
 struct pm860x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm860x_priv *pm860x;
 struct resource *res;
 int i, ret;

 pm860x = devm_kzalloc(&pdev->dev, sizeof(struct pm860x_priv),
         GFP_KERNEL);
 if (pm860x == ((void*)0))
  return -ENOMEM;

 pm860x->chip = chip;
 pm860x->i2c = (chip->id == CHIP_PM8607) ? chip->client
   : chip->companion;
 pm860x->regmap = (chip->id == CHIP_PM8607) ? chip->regmap
   : chip->regmap_companion;
 platform_set_drvdata(pdev, pm860x);

 for (i = 0; i < 4; i++) {
  res = platform_get_resource(pdev, IORESOURCE_IRQ, i);
  if (!res) {
   dev_err(&pdev->dev, "Failed to get IRQ resources\n");
   return -EINVAL;
  }
  pm860x->irq[i] = res->start + chip->irq_base;
  strncpy(pm860x->name[i], res->name, MAX_NAME_LEN);
 }

 ret = devm_snd_soc_register_component(&pdev->dev,
         &soc_component_dev_pm860x,
         pm860x_dai, ARRAY_SIZE(pm860x_dai));
 if (ret) {
  dev_err(&pdev->dev, "Failed to register component\n");
  return -EINVAL;
 }
 return ret;
}
