
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {struct regmap* regmap; } ;


 int EINVAL ;
 int REG_SPDIF_SCR ;
 int REG_SPDIF_SIE ;
 int SCR_DMA_xX_EN (int) ;
 int SIE_INTR_FOR (int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int fsl_spdif_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct fsl_spdif_priv *spdif_priv = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 struct regmap *regmap = spdif_priv->regmap;
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 u32 intr = SIE_INTR_FOR(tx);
 u32 dmaen = SCR_DMA_xX_EN(tx);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  regmap_update_bits(regmap, REG_SPDIF_SIE, intr, intr);
  regmap_update_bits(regmap, REG_SPDIF_SCR, dmaen, dmaen);
  break;
 case 129:
 case 128:
 case 133:
  regmap_update_bits(regmap, REG_SPDIF_SCR, dmaen, 0);
  regmap_update_bits(regmap, REG_SPDIF_SIE, intr, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
