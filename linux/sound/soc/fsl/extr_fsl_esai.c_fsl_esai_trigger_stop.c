
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_esai {int regmap; } ;


 int ESAI_xCR_RE_MASK ;
 int ESAI_xCR_TE_MASK ;
 int ESAI_xCR_xEIE_MASK ;
 int ESAI_xFCR_xFEN ;
 int ESAI_xFCR_xFR ;
 int ESAI_xSMA_xS_MASK ;
 int ESAI_xSMB_xS_MASK ;
 int REG_ESAI_xCR (int) ;
 int REG_ESAI_xFCR (int) ;
 int REG_ESAI_xSMA (int) ;
 int REG_ESAI_xSMB (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void fsl_esai_trigger_stop(struct fsl_esai *esai_priv, bool tx)
{
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx),
      ESAI_xCR_xEIE_MASK, 0);

 regmap_update_bits(esai_priv->regmap, REG_ESAI_xCR(tx),
      tx ? ESAI_xCR_TE_MASK : ESAI_xCR_RE_MASK, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xSMA(tx),
      ESAI_xSMA_xS_MASK, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xSMB(tx),
      ESAI_xSMB_xS_MASK, 0);


 regmap_update_bits(esai_priv->regmap, REG_ESAI_xFCR(tx),
      ESAI_xFCR_xFR | ESAI_xFCR_xFEN, ESAI_xFCR_xFR);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_xFCR(tx),
      ESAI_xFCR_xFR, 0);
}
