
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct fsl_esai {int slots; int slot_width; int regmap; int fifo_depth; scalar_t__ synchronous; } ;


 int DIV_ROUND_UP (int,int) ;
 int ESAI_GPIO ;
 int ESAI_PCRC_PC (int ) ;
 int ESAI_PCRC_PC_MASK ;
 int ESAI_PRRC_PDC (int ) ;
 int ESAI_PRRC_PDC_MASK ;
 int ESAI_xCR_PADC ;
 int ESAI_xCR_xMOD_MASK ;
 int ESAI_xCR_xMOD_NETWORK ;
 int ESAI_xCR_xSWS (int,int) ;
 int ESAI_xCR_xSWS_MASK ;
 int ESAI_xFCR_RE (int) ;
 int ESAI_xFCR_RE_MASK ;
 int ESAI_xFCR_TE (int) ;
 int ESAI_xFCR_TE_MASK ;
 int ESAI_xFCR_TIEN ;
 int ESAI_xFCR_xFR ;
 int ESAI_xFCR_xFR_MASK ;
 int ESAI_xFCR_xFWM (int ) ;
 int ESAI_xFCR_xFWM_MASK ;
 int ESAI_xFCR_xWA (int) ;
 int ESAI_xFCR_xWA_MASK ;
 int REG_ESAI_PCRC ;
 int REG_ESAI_PRRC ;
 int REG_ESAI_TCR ;
 int REG_ESAI_xCR (int) ;
 int REG_ESAI_xFCR (int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int fsl_esai_set_bclk (struct snd_soc_dai*,int,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_esai_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params,
         struct snd_soc_dai *dai)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 u32 width = params_width(params);
 u32 channels = params_channels(params);
 u32 pins = DIV_ROUND_UP(channels, esai_priv->slots);
 u32 slot_width = width;
 u32 bclk, mask, val;
 int ret;


 if (esai_priv->slot_width)
  slot_width = esai_priv->slot_width;

 bclk = params_rate(params) * slot_width * esai_priv->slots;

 ret = fsl_esai_set_bclk(dai, esai_priv->synchronous || tx, bclk);
 if (ret)
  return ret;

 mask = ESAI_xCR_xSWS_MASK;
 val = ESAI_xCR_xSWS(slot_width, width);

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx), mask, val);

 if (!tx && esai_priv->synchronous)
  regmap_update_bits(esai_priv->regmap, REG_ESAI_TCR, mask, val);


 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx),
      ESAI_xCR_xMOD_MASK, params_channels(params) > 1 ?
      ESAI_xCR_xMOD_NETWORK : 0);

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xFCR(tx),
      ESAI_xFCR_xFR_MASK, ESAI_xFCR_xFR);

 mask = ESAI_xFCR_xFR_MASK | ESAI_xFCR_xWA_MASK | ESAI_xFCR_xFWM_MASK |
       (tx ? ESAI_xFCR_TE_MASK | ESAI_xFCR_TIEN : ESAI_xFCR_RE_MASK);
 val = ESAI_xFCR_xWA(width) | ESAI_xFCR_xFWM(esai_priv->fifo_depth) |
      (tx ? ESAI_xFCR_TE(pins) | ESAI_xFCR_TIEN : ESAI_xFCR_RE(pins));

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xFCR(tx), mask, val);

 if (tx)
  regmap_update_bits(esai_priv->regmap, REG_ESAI_TCR,
    ESAI_xCR_PADC, ESAI_xCR_PADC);


 regmap_update_bits(esai_priv->regmap, REG_ESAI_PRRC,
      ESAI_PRRC_PDC_MASK, ESAI_PRRC_PDC(ESAI_GPIO));
 regmap_update_bits(esai_priv->regmap, REG_ESAI_PCRC,
      ESAI_PCRC_PC_MASK, ESAI_PCRC_PC(ESAI_GPIO));
 return 0;
}
