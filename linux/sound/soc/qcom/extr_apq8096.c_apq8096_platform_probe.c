
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {struct snd_soc_card* dai_link; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int apq8096_add_be_ops (struct snd_soc_card*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct snd_soc_card*) ;
 int kfree (struct snd_soc_card*) ;
 struct snd_soc_card* kzalloc (int,int ) ;
 int qcom_snd_parse_of (struct snd_soc_card*) ;
 int snd_soc_register_card (struct snd_soc_card*) ;

__attribute__((used)) static int apq8096_platform_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card;
 struct device *dev = &pdev->dev;
 int ret;

 card = kzalloc(sizeof(*card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;

 card->dev = dev;
 dev_set_drvdata(dev, card);
 ret = qcom_snd_parse_of(card);
 if (ret) {
  dev_err(dev, "Error parsing OF data\n");
  goto err;
 }

 apq8096_add_be_ops(card);
 ret = snd_soc_register_card(card);
 if (ret)
  goto err_card_register;

 return 0;

err_card_register:
 kfree(card->dai_link);
err:
 kfree(card);
 return ret;
}
