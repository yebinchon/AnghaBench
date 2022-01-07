
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int GPIOF_OUT_INIT_LOW ;
 int TOSA_GPIO_L_MUTE ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int gpio_free (int ) ;
 int gpio_request_one (int ,int ,char*) ;
 struct snd_soc_card tosa ;

__attribute__((used)) static int tosa_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &tosa;
 int ret;

 ret = gpio_request_one(TOSA_GPIO_L_MUTE, GPIOF_OUT_INIT_LOW,
          "Headphone Jack");
 if (ret)
  return ret;

 card->dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
  gpio_free(TOSA_GPIO_L_MUTE);
 }
 return ret;
}
