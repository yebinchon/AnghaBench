
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int clk_apb; scalar_t__ rst; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (scalar_t__) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int sun4i_codec_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(card);

 snd_soc_unregister_card(card);
 if (scodec->rst)
  reset_control_assert(scodec->rst);
 clk_disable_unprepare(scodec->clk_apb);

 return 0;
}
