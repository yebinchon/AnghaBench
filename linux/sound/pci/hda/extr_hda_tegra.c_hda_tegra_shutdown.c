
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct azx* private_data; } ;
struct platform_device {int dev; } ;
struct azx {scalar_t__ running; } ;


 int azx_stop_chip (struct azx*) ;
 struct snd_card* dev_get_drvdata (int *) ;

__attribute__((used)) static void hda_tegra_shutdown(struct platform_device *pdev)
{
 struct snd_card *card = dev_get_drvdata(&pdev->dev);
 struct azx *chip;

 if (!card)
  return;
 chip = card->private_data;
 if (chip && chip->running)
  azx_stop_chip(chip);
}
