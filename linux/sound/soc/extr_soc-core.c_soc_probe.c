
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; int name; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int dev_warn (int *,char*,int ) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_register_card (struct snd_soc_card*) ;

__attribute__((used)) static int soc_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);





 if (!card)
  return -EINVAL;

 dev_warn(&pdev->dev,
   "ASoC: machine %s should use snd_soc_register_card()\n",
   card->name);


 card->dev = &pdev->dev;

 return snd_soc_register_card(card);
}
