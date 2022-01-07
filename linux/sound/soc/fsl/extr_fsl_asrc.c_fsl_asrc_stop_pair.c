
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int regmap; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int ASRCTR_ASRCEi_MASK (int) ;
 int REG_ASRCTR ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void fsl_asrc_stop_pair(struct fsl_asrc_pair *pair)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_ASRCEi_MASK(index), 0);
}
