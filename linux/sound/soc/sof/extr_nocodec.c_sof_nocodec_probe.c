
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 struct snd_soc_card sof_nocodec_card ;

__attribute__((used)) static int sof_nocodec_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &sof_nocodec_card;

 card->dev = &pdev->dev;

 return devm_snd_soc_register_card(&pdev->dev, card);
}
