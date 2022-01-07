
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asrc {int regmap; } ;


 int ASRCTR_ASRCEN ;
 int ASRTFR1_TF_BASE (int) ;
 int ASRTFR1_TF_BASE_MASK ;
 int REG_ASR56K ;
 int REG_ASR76K ;
 int REG_ASRCTR ;
 int REG_ASRIER ;
 int REG_ASRPM1 ;
 int REG_ASRPM2 ;
 int REG_ASRPM3 ;
 int REG_ASRPM4 ;
 int REG_ASRPM5 ;
 int REG_ASRTFR1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int fsl_asrc_init(struct fsl_asrc *asrc_priv)
{

 regmap_write(asrc_priv->regmap, REG_ASRCTR, ASRCTR_ASRCEN);


 regmap_write(asrc_priv->regmap, REG_ASRIER, 0x0);


 regmap_write(asrc_priv->regmap, REG_ASRPM1, 0x7fffff);
 regmap_write(asrc_priv->regmap, REG_ASRPM2, 0x255555);
 regmap_write(asrc_priv->regmap, REG_ASRPM3, 0xff7280);
 regmap_write(asrc_priv->regmap, REG_ASRPM4, 0xff7280);
 regmap_write(asrc_priv->regmap, REG_ASRPM5, 0xff7280);


 regmap_update_bits(asrc_priv->regmap, REG_ASRTFR1,
      ASRTFR1_TF_BASE_MASK, ASRTFR1_TF_BASE(0xfc));


 regmap_write(asrc_priv->regmap, REG_ASR76K, 0x06D6);


 return regmap_write(asrc_priv->regmap, REG_ASR56K, 0x0947);
}
