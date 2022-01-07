
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct uda134x_priv {int regmap; struct uda134x_platform_data* pd; } ;
struct TYPE_8__ {scalar_t__ use_gpios; } ;
struct uda134x_platform_data {TYPE_2__ l3; } ;
struct TYPE_7__ {struct uda134x_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 struct uda134x_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init (TYPE_1__*,int *,struct uda134x_platform_data*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int l3_set_gpio_ops (TYPE_1__*,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct uda134x_priv*) ;
 int soc_component_dev_uda134x ;
 int uda134x_dai ;
 int uda134x_regmap_config ;

__attribute__((used)) static int uda134x_codec_probe(struct platform_device *pdev)
{
 struct uda134x_platform_data *pd = pdev->dev.platform_data;
 struct uda134x_priv *uda134x;
 int ret;

 if (!pd) {
  dev_err(&pdev->dev, "Missing L3 bitbang function\n");
  return -ENODEV;
 }

 uda134x = devm_kzalloc(&pdev->dev, sizeof(*uda134x), GFP_KERNEL);
 if (!uda134x)
  return -ENOMEM;

 uda134x->pd = pd;
 platform_set_drvdata(pdev, uda134x);

 if (pd->l3.use_gpios) {
  ret = l3_set_gpio_ops(&pdev->dev, &uda134x->pd->l3);
  if (ret < 0)
   return ret;
 }

 uda134x->regmap = devm_regmap_init(&pdev->dev, ((void*)0), pd,
  &uda134x_regmap_config);
 if (IS_ERR(uda134x->regmap))
  return PTR_ERR(uda134x->regmap);

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_uda134x, &uda134x_dai, 1);
}
