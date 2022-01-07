
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int name; int * dev; } ;
struct platform_device {int dev; } ;


 struct snd_soc_card cz_card ;
 int dev_err (int *,char*,int ,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int platform_set_drvdata (struct platform_device*,struct snd_soc_card*) ;

__attribute__((used)) static int cz_probe(struct platform_device *pdev)
{
 int ret;
 struct snd_soc_card *card;

 card = &cz_card;
 cz_card.dev = &pdev->dev;
 platform_set_drvdata(pdev, card);
 ret = devm_snd_soc_register_card(&pdev->dev, &cz_card);
 if (ret) {
  dev_err(&pdev->dev,
    "devm_snd_soc_register_card(%s) failed: %d\n",
    cz_card.name, ret);
  return ret;
 }
 return 0;
}
