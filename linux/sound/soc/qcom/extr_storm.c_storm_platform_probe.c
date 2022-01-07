
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int num_links; int * dai_link; int * dev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 struct snd_soc_card* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int snd_soc_of_parse_card_name (struct snd_soc_card*,char*) ;
 int storm_dai_link ;
 int storm_parse_of (struct snd_soc_card*) ;

__attribute__((used)) static int storm_platform_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card;
 int ret;

 card = devm_kzalloc(&pdev->dev, sizeof(*card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;

 card->dev = &pdev->dev;

 ret = snd_soc_of_parse_card_name(card, "qcom,model");
 if (ret) {
  dev_err(&pdev->dev, "error parsing card name: %d\n", ret);
  return ret;
 }

 card->dai_link = &storm_dai_link;
 card->num_links = 1;

 ret = storm_parse_of(card);
 if (ret) {
  dev_err(&pdev->dev, "error resolving dai links: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret)
  dev_err(&pdev->dev, "error registering soundcard: %d\n", ret);

 return ret;

}
