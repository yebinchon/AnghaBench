
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct s3c24xx_uda134x {int clk_lock; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 struct s3c24xx_uda134x* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 int mutex_init (int *) ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct s3c24xx_uda134x*) ;
 struct snd_soc_card snd_soc_s3c24xx_uda134x ;

__attribute__((used)) static int s3c24xx_uda134x_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &snd_soc_s3c24xx_uda134x;
 struct s3c24xx_uda134x *priv;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->clk_lock);

 card->dev = &pdev->dev;
 snd_soc_card_set_drvdata(card, priv);

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret)
  dev_err(&pdev->dev, "failed to register card: %d\n", ret);

 return ret;
}
