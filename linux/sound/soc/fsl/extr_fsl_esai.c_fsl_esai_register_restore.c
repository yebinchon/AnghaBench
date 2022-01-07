
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_esai {int regmap; } ;


 int ESAI_xFCR_xFR ;
 int REG_ESAI_RFCR ;
 int REG_ESAI_TFCR ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int fsl_esai_register_restore(struct fsl_esai *esai_priv)
{
 int ret;


 regmap_update_bits(esai_priv->regmap, REG_ESAI_TFCR,
      ESAI_xFCR_xFR, ESAI_xFCR_xFR);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RFCR,
      ESAI_xFCR_xFR, ESAI_xFCR_xFR);

 regcache_mark_dirty(esai_priv->regmap);
 ret = regcache_sync(esai_priv->regmap);
 if (ret)
  return ret;


 regmap_update_bits(esai_priv->regmap, REG_ESAI_TFCR, ESAI_xFCR_xFR, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RFCR, ESAI_xFCR_xFR, 0);

 return 0;
}
