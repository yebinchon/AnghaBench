
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {struct snd_soc_card* dai_link; } ;
struct sdm845_snd_data {struct sdm845_snd_data* dai_link; } ;
struct platform_device {int dev; } ;


 struct snd_soc_card* dev_get_drvdata (int *) ;
 int kfree (struct snd_soc_card*) ;
 struct snd_soc_card* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static int sdm845_snd_platform_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = dev_get_drvdata(&pdev->dev);
 struct sdm845_snd_data *data = snd_soc_card_get_drvdata(card);

 snd_soc_unregister_card(card);
 kfree(card->dai_link);
 kfree(data);
 kfree(card);
 return 0;
}
