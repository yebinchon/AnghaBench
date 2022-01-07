
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct kbl_rt5663_private {int sclk; int mclk; } ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,int) ;
 struct kbl_rt5663_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct kbl_rt5663_private *priv = snd_soc_card_get_drvdata(card);
 int ret = 0;






 switch (event) {
 case 128:

  ret = clk_set_rate(priv->mclk, 24000000);
  if (ret < 0) {
   dev_err(card->dev, "Can't set rate for mclk, err: %d\n",
    ret);
   return ret;
  }

  ret = clk_prepare_enable(priv->mclk);
  if (ret < 0) {
   dev_err(card->dev, "Can't enable mclk, err: %d\n", ret);
   return ret;
  }


  ret = clk_set_rate(priv->sclk, 3072000);
  if (ret < 0) {
   dev_err(card->dev, "Can't set rate for sclk, err: %d\n",
    ret);
   clk_disable_unprepare(priv->mclk);
   return ret;
  }

  ret = clk_prepare_enable(priv->sclk);
  if (ret < 0) {
   dev_err(card->dev, "Can't enable sclk, err: %d\n", ret);
   clk_disable_unprepare(priv->mclk);
  }
  break;
 case 129:
  clk_disable_unprepare(priv->mclk);
  clk_disable_unprepare(priv->sclk);
  break;
 default:
  return 0;
 }

 return 0;
}
