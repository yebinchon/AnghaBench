
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct axg_spdifin {int pclk; } ;


 int axg_spdifin_sample_mode_config (struct snd_soc_dai*,struct axg_spdifin*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct axg_spdifin* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifin_dai_probe(struct snd_soc_dai *dai)
{
 struct axg_spdifin *priv = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = clk_prepare_enable(priv->pclk);
 if (ret) {
  dev_err(dai->dev, "failed to enable pclk\n");
  return ret;
 }

 ret = axg_spdifin_sample_mode_config(dai, priv);
 if (ret) {
  dev_err(dai->dev, "mode configuration failed\n");
  clk_disable_unprepare(priv->pclk);
  return ret;
 }

 return 0;
}
