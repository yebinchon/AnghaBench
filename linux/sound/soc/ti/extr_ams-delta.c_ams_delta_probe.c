
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct snd_soc_card ams_delta_audio_card ;
 int dev_err (int *,char*,int) ;
 int devm_gpiod_get (int *,char*,int ) ;
 int handset_mute ;
 int handsfree_mute ;
 int snd_soc_register_card (struct snd_soc_card*) ;

__attribute__((used)) static int ams_delta_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &ams_delta_audio_card;
 int ret;

 card->dev = &pdev->dev;

 handset_mute = devm_gpiod_get(card->dev, "handset_mute",
          GPIOD_OUT_HIGH);
 if (IS_ERR(handset_mute))
  return PTR_ERR(handset_mute);

 handsfree_mute = devm_gpiod_get(card->dev, "handsfree_mute",
     GPIOD_OUT_HIGH);
 if (IS_ERR(handsfree_mute))
  return PTR_ERR(handsfree_mute);

 ret = snd_soc_register_card(card);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card failed (%d)\n", ret);
  card->dev = ((void*)0);
  return ret;
 }
 return 0;
}
