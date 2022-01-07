
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int platform_device_register_simple (char*,int,int *,int ) ;
 int platform_device_unregister (int ) ;
 int simone_snd_ac97_device ;
 int snd_soc_register_card (struct snd_soc_card*) ;
 struct snd_soc_card snd_soc_simone ;

__attribute__((used)) static int simone_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &snd_soc_simone;
 int ret;

 simone_snd_ac97_device = platform_device_register_simple("ac97-codec",
         -1, ((void*)0), 0);
 if (IS_ERR(simone_snd_ac97_device))
  return PTR_ERR(simone_snd_ac97_device);

 card->dev = &pdev->dev;

 ret = snd_soc_register_card(card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);
  platform_device_unregister(simone_snd_ac97_device);
 }

 return ret;
}
