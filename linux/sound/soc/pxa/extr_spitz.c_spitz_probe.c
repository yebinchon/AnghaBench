
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int AKITA_GPIO_MIC_BIAS ;
 int SPITZ_GPIO_MIC_BIAS ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 scalar_t__ machine_is_akita () ;
 struct snd_soc_card snd_soc_spitz ;
 int spitz_mic_gpio ;

__attribute__((used)) static int spitz_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &snd_soc_spitz;
 int ret;

 if (machine_is_akita())
  spitz_mic_gpio = AKITA_GPIO_MIC_BIAS;
 else
  spitz_mic_gpio = SPITZ_GPIO_MIC_BIAS;

 ret = gpio_request(spitz_mic_gpio, "MIC GPIO");
 if (ret)
  goto err1;

 ret = gpio_direction_output(spitz_mic_gpio, 0);
 if (ret)
  goto err2;

 card->dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
  goto err2;
 }

 return 0;

err2:
 gpio_free(spitz_mic_gpio);
err1:
 return ret;
}
