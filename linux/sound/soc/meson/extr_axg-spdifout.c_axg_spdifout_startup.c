
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_spdifout {int map; int pclk; } ;


 int SPDIFOUT_CTRL0 ;
 int SPDIFOUT_CTRL0_CHSTS_SEL ;
 int SPDIFOUT_CTRL0_DATA_SEL ;
 int SPDIFOUT_CTRL0_MSB_FIRST ;
 int SPDIFOUT_CTRL0_USEL ;
 int SPDIFOUT_CTRL0_USET ;
 int SPDIFOUT_CTRL0_VSEL ;
 int SPDIFOUT_SWAP ;
 int axg_spdifout_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,int) ;
 struct axg_spdifout* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifout_startup(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct axg_spdifout *priv = snd_soc_dai_get_drvdata(dai);
 int ret;


 ret = clk_prepare_enable(priv->pclk);
 if (ret) {
  dev_err(dai->dev, "failed to enable pclk\n");
  return ret;
 }


 axg_spdifout_disable(priv->map);


 regmap_update_bits(priv->map, SPDIFOUT_CTRL0,
      SPDIFOUT_CTRL0_MSB_FIRST | SPDIFOUT_CTRL0_DATA_SEL,
      0);


 regmap_update_bits(priv->map, SPDIFOUT_CTRL0,
      SPDIFOUT_CTRL0_CHSTS_SEL | SPDIFOUT_CTRL0_VSEL |
      SPDIFOUT_CTRL0_USEL | SPDIFOUT_CTRL0_USET,
      0);


 regmap_write(priv->map, SPDIFOUT_SWAP, 0x10);

 return 0;
}
