
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 int atmel_ssc_put_audio (int ) ;
 int clk_disable (int *) ;
 int * mclk ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int at91sam9g20ek_audio_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);

 clk_disable(mclk);
 mclk = ((void*)0);
 snd_soc_unregister_card(card);
 atmel_ssc_put_audio(0);

 return 0;
}
