
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_esai {int regmap; } ;


 int ESAI_GPIO ;
 int ESAI_PCRC_PC (int ) ;
 int ESAI_PCRC_PC_MASK ;
 int ESAI_PRRC_PDC (int ) ;
 int ESAI_PRRC_PDC_MASK ;
 int ESAI_xCR_xPR ;
 int ESAI_xCR_xPR_MASK ;
 int ESAI_xFCR_xFEN ;
 int REG_ESAI_PCRC ;
 int REG_ESAI_PRRC ;
 int REG_ESAI_RCR ;
 int REG_ESAI_RFCR ;
 int REG_ESAI_TCR ;
 int REG_ESAI_TFCR ;
 int fsl_esai_hw_init (struct fsl_esai*) ;
 int fsl_esai_register_restore (struct fsl_esai*) ;
 int fsl_esai_trigger_start (struct fsl_esai*,int) ;
 int fsl_esai_trigger_stop (struct fsl_esai*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void fsl_esai_hw_reset(unsigned long arg)
{
 struct fsl_esai *esai_priv = (struct fsl_esai *)arg;
 bool tx = 1, rx = 0, enabled[2];
 u32 tfcr, rfcr;


 regmap_read(esai_priv->regmap, REG_ESAI_TFCR, &tfcr);
 regmap_read(esai_priv->regmap, REG_ESAI_RFCR, &rfcr);
 enabled[tx] = tfcr & ESAI_xFCR_xFEN;
 enabled[rx] = rfcr & ESAI_xFCR_xFEN;


 fsl_esai_trigger_stop(esai_priv, tx);
 fsl_esai_trigger_stop(esai_priv, rx);


 fsl_esai_hw_init(esai_priv);


 regmap_update_bits(esai_priv->regmap, REG_ESAI_TCR,
      ESAI_xCR_xPR_MASK, ESAI_xCR_xPR);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RCR,
      ESAI_xCR_xPR_MASK, ESAI_xCR_xPR);


 fsl_esai_register_restore(esai_priv);


 regmap_update_bits(esai_priv->regmap, REG_ESAI_TCR,
      ESAI_xCR_xPR_MASK, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RCR,
      ESAI_xCR_xPR_MASK, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_PRRC,
      ESAI_PRRC_PDC_MASK, ESAI_PRRC_PDC(ESAI_GPIO));
 regmap_update_bits(esai_priv->regmap, REG_ESAI_PCRC,
      ESAI_PCRC_PC_MASK, ESAI_PCRC_PC(ESAI_GPIO));


 if (enabled[tx])
  fsl_esai_trigger_start(esai_priv, tx);
 if (enabled[rx])
  fsl_esai_trigger_start(esai_priv, rx);
}
