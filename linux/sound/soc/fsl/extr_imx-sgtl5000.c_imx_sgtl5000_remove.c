
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct imx_sgtl5000_data {int codec_clk; } ;


 int clk_put (int ) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 struct imx_sgtl5000_data* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int imx_sgtl5000_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct imx_sgtl5000_data *data = snd_soc_card_get_drvdata(card);

 clk_put(data->codec_clk);

 return 0;
}
