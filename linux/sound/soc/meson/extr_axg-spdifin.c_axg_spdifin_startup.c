
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_spdifin {int map; int refclk; } ;


 int SPDIFIN_CTRL0 ;
 int SPDIFIN_CTRL0_EN ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axg_spdifin* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifin_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct axg_spdifin *priv = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = clk_prepare_enable(priv->refclk);
 if (ret) {
  dev_err(dai->dev,
   "failed to enable spdifin reference clock\n");
  return ret;
 }

 regmap_update_bits(priv->map, SPDIFIN_CTRL0, SPDIFIN_CTRL0_EN,
      SPDIFIN_CTRL0_EN);

 return 0;
}
