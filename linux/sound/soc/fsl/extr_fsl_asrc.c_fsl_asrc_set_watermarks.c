
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int regmap; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int ASRMCRi_EXTTHRSHi ;
 int ASRMCRi_EXTTHRSHi_MASK ;
 int ASRMCRi_INFIFO_THRESHOLD (int ) ;
 int ASRMCRi_INFIFO_THRESHOLD_MASK ;
 int ASRMCRi_OUTFIFO_THRESHOLD (int ) ;
 int ASRMCRi_OUTFIFO_THRESHOLD_MASK ;
 int REG_ASRMCR (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void fsl_asrc_set_watermarks(struct fsl_asrc_pair *pair, u32 in, u32 out)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;

 regmap_update_bits(asrc_priv->regmap, REG_ASRMCR(index),
      ASRMCRi_EXTTHRSHi_MASK |
      ASRMCRi_INFIFO_THRESHOLD_MASK |
      ASRMCRi_OUTFIFO_THRESHOLD_MASK,
      ASRMCRi_EXTTHRSHi |
      ASRMCRi_INFIFO_THRESHOLD(in) |
      ASRMCRi_OUTFIFO_THRESHOLD(out));
}
