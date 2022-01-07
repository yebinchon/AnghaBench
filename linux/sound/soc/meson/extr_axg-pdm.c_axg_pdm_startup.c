
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_pdm {int map; int dclk; } ;


 int axg_pdm_filters_enable (int ,int) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_pdm_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = clk_prepare_enable(priv->dclk);
 if (ret) {
  dev_err(dai->dev, "enabling dclk failed\n");
  return ret;
 }


 axg_pdm_filters_enable(priv->map, 1);

 return ret;
}
