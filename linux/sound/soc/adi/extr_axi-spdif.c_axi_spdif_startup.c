
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct axi_spdif {int regmap; int clk_ref; int rate_constraints; } ;


 int AXI_SPDIF_CTRL_TXEN ;
 int AXI_SPDIF_REG_CTRL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int clk_prepare_enable (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_pcm_hw_constraint_ratnums (int ,int ,int ,int *) ;
 struct axi_spdif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axi_spdif_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct axi_spdif *spdif = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = snd_pcm_hw_constraint_ratnums(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_RATE,
      &spdif->rate_constraints);
 if (ret)
  return ret;

 ret = clk_prepare_enable(spdif->clk_ref);
 if (ret)
  return ret;

 regmap_update_bits(spdif->regmap, AXI_SPDIF_REG_CTRL,
  AXI_SPDIF_CTRL_TXEN, AXI_SPDIF_CTRL_TXEN);

 return 0;
}
