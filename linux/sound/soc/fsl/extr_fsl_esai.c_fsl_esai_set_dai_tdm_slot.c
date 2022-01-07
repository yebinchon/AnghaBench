
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct snd_soc_dai {int dummy; } ;
struct fsl_esai {int slot_width; int slots; void* rx_mask; void* tx_mask; int regmap; } ;


 int ESAI_xCCR_xDC (int) ;
 int ESAI_xCCR_xDC_MASK ;
 int REG_ESAI_RCCR ;
 int REG_ESAI_TCCR ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_esai_set_dai_tdm_slot(struct snd_soc_dai *dai, u32 tx_mask,
         u32 rx_mask, int slots, int slot_width)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);

 regmap_update_bits(esai_priv->regmap, REG_ESAI_TCCR,
      ESAI_xCCR_xDC_MASK, ESAI_xCCR_xDC(slots));

 regmap_update_bits(esai_priv->regmap, REG_ESAI_RCCR,
      ESAI_xCCR_xDC_MASK, ESAI_xCCR_xDC(slots));

 esai_priv->slot_width = slot_width;
 esai_priv->slots = slots;
 esai_priv->tx_mask = tx_mask;
 esai_priv->rx_mask = rx_mask;

 return 0;
}
