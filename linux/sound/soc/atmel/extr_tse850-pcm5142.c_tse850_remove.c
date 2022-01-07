
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse850_priv {int ana; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 struct tse850_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int tse850_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct tse850_priv *tse850 = snd_soc_card_get_drvdata(card);

 snd_soc_unregister_card(card);
 regulator_disable(tse850->ana);

 return 0;
}
