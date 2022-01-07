
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct byt_cht_es8316_private {int speaker_en_gpio; } ;


 int gpiod_put (int ) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 struct byt_cht_es8316_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int snd_byt_cht_es8316_mc_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct byt_cht_es8316_private *priv = snd_soc_card_get_drvdata(card);

 gpiod_put(priv->speaker_en_gpio);
 return 0;
}
