
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 struct snd_soc_card e800 ;
 int e800_audio_gpios ;
 int gpio_free_array (int ,int ) ;
 int gpio_request_array (int ,int ) ;

__attribute__((used)) static int e800_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &e800;
 int ret;

 ret = gpio_request_array(e800_audio_gpios,
     ARRAY_SIZE(e800_audio_gpios));
 if (ret)
  return ret;

 card->dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
  gpio_free_array(e800_audio_gpios, ARRAY_SIZE(e800_audio_gpios));
 }
 return ret;
}
