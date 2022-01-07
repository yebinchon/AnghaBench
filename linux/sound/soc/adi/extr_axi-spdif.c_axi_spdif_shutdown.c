
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axi_spdif {int clk_ref; int regmap; } ;


 int AXI_SPDIF_CTRL_TXEN ;
 int AXI_SPDIF_REG_CTRL ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axi_spdif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void axi_spdif_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct axi_spdif *spdif = snd_soc_dai_get_drvdata(dai);

 regmap_update_bits(spdif->regmap, AXI_SPDIF_REG_CTRL,
  AXI_SPDIF_CTRL_TXEN, 0);

 clk_disable_unprepare(spdif->clk_ref);
}
