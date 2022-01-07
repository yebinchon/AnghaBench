
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int name; int * dev; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {int dev; } ;
struct acp_platform_info {int dummy; } ;
struct TYPE_3__ {int * dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 scalar_t__ PTR_ERR (struct regulator_dev*) ;
 TYPE_1__ acp_da7219_cfg ;
 int acp_da7219_desc ;
 int bt_uart_enable ;
 struct snd_soc_card cz_card ;
 int dev_err (int *,char*,int,...) ;
 int device_property_read_bool (int *,char*) ;
 struct acp_platform_info* devm_kzalloc (int *,int,int ) ;
 struct regulator_dev* devm_regulator_register (int *,int *,TYPE_1__*) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int platform_set_drvdata (struct platform_device*,struct snd_soc_card*) ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct acp_platform_info*) ;

__attribute__((used)) static int cz_probe(struct platform_device *pdev)
{
 int ret;
 struct snd_soc_card *card;
 struct acp_platform_info *machine;
 struct regulator_dev *rdev;

 acp_da7219_cfg.dev = &pdev->dev;
 rdev = devm_regulator_register(&pdev->dev, &acp_da7219_desc,
           &acp_da7219_cfg);
 if (IS_ERR(rdev)) {
  dev_err(&pdev->dev, "Failed to register regulator: %d\n",
   (int)PTR_ERR(rdev));
  return -EINVAL;
 }

 machine = devm_kzalloc(&pdev->dev, sizeof(struct acp_platform_info),
          GFP_KERNEL);
 if (!machine)
  return -ENOMEM;
 card = &cz_card;
 cz_card.dev = &pdev->dev;
 platform_set_drvdata(pdev, card);
 snd_soc_card_set_drvdata(card, machine);
 ret = devm_snd_soc_register_card(&pdev->dev, &cz_card);
 if (ret) {
  dev_err(&pdev->dev,
    "devm_snd_soc_register_card(%s) failed: %d\n",
    cz_card.name, ret);
  return ret;
 }
 bt_uart_enable = !device_property_read_bool(&pdev->dev,
          "bt-pad-enable");
 return 0;
}
