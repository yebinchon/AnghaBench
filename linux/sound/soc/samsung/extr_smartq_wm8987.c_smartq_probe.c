
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (int *,char*) ;
 struct gpio_desc* devm_gpiod_get (int *,char*,int ) ;
 int devm_snd_soc_register_card (int *,int *) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int snd_soc_card_set_drvdata (int *,struct gpio_desc*) ;
 int snd_soc_smartq ;

__attribute__((used)) static int smartq_probe(struct platform_device *pdev)
{
 struct gpio_desc *gpio;
 int ret;

 platform_set_drvdata(pdev, &snd_soc_smartq);


 gpio = devm_gpiod_get(&pdev->dev, "amplifiers shutdown",
         GPIOD_OUT_HIGH);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "Failed to register GPK12\n");
  ret = PTR_ERR(gpio);
  goto out;
 }
 snd_soc_card_set_drvdata(&snd_soc_smartq, gpio);

 ret = devm_snd_soc_register_card(&pdev->dev, &snd_soc_smartq);
 if (ret)
  dev_err(&pdev->dev, "Failed to register card\n");

out:
 return ret;
}
