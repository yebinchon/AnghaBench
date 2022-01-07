
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {struct sam9x5_drvdata* drvdata; } ;
struct sam9x5_drvdata {int ssc_id; } ;
struct platform_device {int dummy; } ;


 int atmel_ssc_put_audio (int ) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int sam9x5_wm8731_driver_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct sam9x5_drvdata *priv = card->drvdata;

 snd_soc_unregister_card(card);
 atmel_ssc_put_audio(priv->ssc_id);

 return 0;
}
