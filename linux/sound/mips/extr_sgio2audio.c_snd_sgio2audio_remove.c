
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct platform_device {int dummy; } ;


 struct snd_card* platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static int snd_sgio2audio_remove(struct platform_device *pdev)
{
 struct snd_card *card = platform_get_drvdata(pdev);

 snd_card_free(card);
 return 0;
}
