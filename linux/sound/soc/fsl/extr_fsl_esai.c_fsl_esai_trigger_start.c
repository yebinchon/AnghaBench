
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct fsl_esai {scalar_t__* channels; int regmap; int rx_mask; int tx_mask; int slots; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 int ESAI_xCR_RE (int ) ;
 int ESAI_xCR_RE_MASK ;
 int ESAI_xCR_TE (int ) ;
 int ESAI_xCR_TE_MASK ;
 int ESAI_xCR_xEIE ;
 int ESAI_xCR_xEIE_MASK ;
 int ESAI_xFCR_xFEN ;
 int ESAI_xFCR_xFEN_MASK ;
 int ESAI_xSMA_xS (int ) ;
 int ESAI_xSMA_xS_MASK ;
 int ESAI_xSMB_xS (int ) ;
 int ESAI_xSMB_xS_MASK ;
 int REG_ESAI_ETDR ;
 int REG_ESAI_xCR (int) ;
 int REG_ESAI_xFCR (int) ;
 int REG_ESAI_xSMA (int) ;
 int REG_ESAI_xSMB (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void fsl_esai_trigger_start(struct fsl_esai *esai_priv, bool tx)
{
 u8 i, channels = esai_priv->channels[tx];
 u32 pins = DIV_ROUND_UP(channels, esai_priv->slots);
 u32 mask;

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xFCR(tx),
      ESAI_xFCR_xFEN_MASK, ESAI_xFCR_xFEN);


 for (i = 0; tx && i < channels; i++)
  regmap_write(esai_priv->regmap, REG_ESAI_ETDR, 0x0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx),
      tx ? ESAI_xCR_TE_MASK : ESAI_xCR_RE_MASK,
      tx ? ESAI_xCR_TE(pins) : ESAI_xCR_RE(pins));
 mask = tx ? esai_priv->tx_mask : esai_priv->rx_mask;

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xSMB(tx),
      ESAI_xSMB_xS_MASK, ESAI_xSMB_xS(mask));
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xSMA(tx),
      ESAI_xSMA_xS_MASK, ESAI_xSMA_xS(mask));


 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx),
      ESAI_xCR_xEIE_MASK, ESAI_xCR_xEIE);
}
