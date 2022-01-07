
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asrc_pair {int index; int channels; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int regmap; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int ASRCFG_INIRQi_MASK (int) ;
 int ASRCTR_ASRCE (int) ;
 int ASRCTR_ASRCEi_MASK (int) ;
 int ASRIER_AOLIE ;
 int REG_ASRCFG ;
 int REG_ASRCNCR ;
 int REG_ASRCTR ;
 int REG_ASRDI (int) ;
 int REG_ASRIER ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void fsl_asrc_start_pair(struct fsl_asrc_pair *pair)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;
 int reg, retry = 10, i;


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_ASRCEi_MASK(index), ASRCTR_ASRCE(index));


 do {
  udelay(5);
  regmap_read(asrc_priv->regmap, REG_ASRCFG, &reg);
  reg &= ASRCFG_INIRQi_MASK(index);
 } while (!reg && --retry);


 regmap_read(asrc_priv->regmap, REG_ASRCNCR, &reg);
 for (i = 0; i < pair->channels * 4; i++)
  regmap_write(asrc_priv->regmap, REG_ASRDI(index), 0);


 regmap_write(asrc_priv->regmap, REG_ASRIER, ASRIER_AOLIE);
}
