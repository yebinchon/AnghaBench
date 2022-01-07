
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axi_spdif {int regmap; } ;


 unsigned int AXI_SPDIF_CTRL_TXDATA ;
 int AXI_SPDIF_REG_CTRL ;
 int EINVAL ;






 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct axi_spdif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axi_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 struct axi_spdif *spdif = snd_soc_dai_get_drvdata(dai);
 unsigned int val;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  val = AXI_SPDIF_CTRL_TXDATA;
  break;
 case 129:
 case 128:
 case 133:
  val = 0;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(spdif->regmap, AXI_SPDIF_REG_CTRL,
  AXI_SPDIF_CTRL_TXDATA, val);

 return 0;
}
