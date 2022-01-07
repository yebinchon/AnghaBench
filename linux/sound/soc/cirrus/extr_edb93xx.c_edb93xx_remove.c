
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 int ep93xx_i2s_release () ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int edb93xx_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);

 snd_soc_unregister_card(card);
 ep93xx_i2s_release();

 return 0;
}
