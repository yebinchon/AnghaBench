
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int dev; } ;


 int POODLE_LOCOMO_GPIO_AMP_ON ;
 int POODLE_LOCOMO_GPIO_MUTE_L ;
 int POODLE_LOCOMO_GPIO_MUTE_R ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int locomo_gpio_set_dir (int *,int ,int ) ;
 struct snd_soc_card poodle ;
 TYPE_1__ poodle_locomo_device ;

__attribute__((used)) static int poodle_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &poodle;
 int ret;

 locomo_gpio_set_dir(&poodle_locomo_device.dev,
  POODLE_LOCOMO_GPIO_AMP_ON, 0);

 locomo_gpio_set_dir(&poodle_locomo_device.dev,
  POODLE_LOCOMO_GPIO_MUTE_L, 0);
 locomo_gpio_set_dir(&poodle_locomo_device.dev,
  POODLE_LOCOMO_GPIO_MUTE_R, 0);

 card->dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret)
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
 return ret;
}
