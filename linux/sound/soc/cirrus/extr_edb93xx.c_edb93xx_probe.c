
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int ep93xx_i2s_acquire () ;
 int ep93xx_i2s_release () ;
 struct snd_soc_card snd_soc_edb93xx ;
 int snd_soc_register_card (struct snd_soc_card*) ;

__attribute__((used)) static int edb93xx_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &snd_soc_edb93xx;
 int ret;

 ret = ep93xx_i2s_acquire();
 if (ret)
  return ret;

 card->dev = &pdev->dev;

 ret = snd_soc_register_card(card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
  ep93xx_i2s_release();
 }

 return ret;
}
