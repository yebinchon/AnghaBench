
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct byt_max98090_private {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_byt_max98090_gpios ;
 TYPE_1__ byt_max98090_card ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_acpi_dev_add_driver_gpios (int ,int ) ;
 struct byt_max98090_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_card (struct device*,TYPE_1__*) ;
 int snd_soc_card_set_drvdata (TYPE_1__*,struct byt_max98090_private*) ;

__attribute__((used)) static int byt_max98090_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct byt_max98090_private *priv;
 int ret_val;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  dev_err(&pdev->dev, "allocation failed\n");
  return -ENOMEM;
 }

 ret_val = devm_acpi_dev_add_driver_gpios(dev->parent, acpi_byt_max98090_gpios);
 if (ret_val)
  dev_dbg(dev, "Unable to add GPIO mapping table\n");

 byt_max98090_card.dev = &pdev->dev;
 snd_soc_card_set_drvdata(&byt_max98090_card, priv);
 ret_val = devm_snd_soc_register_card(&pdev->dev, &byt_max98090_card);
 if (ret_val) {
  dev_err(&pdev->dev,
   "snd_soc_register_card failed %d\n", ret_val);
  return ret_val;
 }

 return 0;
}
