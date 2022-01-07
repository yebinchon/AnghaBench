
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct platform_device {int dummy; } ;


 struct snd_card* platform_get_drvdata (struct platform_device*) ;
 int pxa2xx_ac97_hw_remove (struct platform_device*) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static int pxa2xx_ac97_remove(struct platform_device *dev)
{
 struct snd_card *card = platform_get_drvdata(dev);

 if (card) {
  snd_card_free(card);
  pxa2xx_ac97_hw_remove(dev);
 }

 return 0;
}
