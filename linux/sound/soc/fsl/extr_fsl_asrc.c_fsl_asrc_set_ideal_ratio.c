
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int regmap; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int EINVAL ;
 int IDEAL_RATIO_DECIMAL_DEPTH ;
 int REG_ASRIDRH (int) ;
 int REG_ASRIDRL (int) ;
 int pair_err (char*) ;
 int regmap_write (int ,int ,unsigned long) ;

__attribute__((used)) static int fsl_asrc_set_ideal_ratio(struct fsl_asrc_pair *pair,
        int inrate, int outrate)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;
 unsigned long ratio;
 int i;

 if (!outrate) {
  pair_err("output rate should not be zero\n");
  return -EINVAL;
 }


 ratio = (inrate / outrate) << IDEAL_RATIO_DECIMAL_DEPTH;


 inrate %= outrate;

 for (i = 1; i <= IDEAL_RATIO_DECIMAL_DEPTH; i++) {
  inrate <<= 1;

  if (inrate < outrate)
   continue;

  ratio |= 1 << (IDEAL_RATIO_DECIMAL_DEPTH - i);
  inrate -= outrate;

  if (!inrate)
   break;
 }

 regmap_write(asrc_priv->regmap, REG_ASRIDRL(index), ratio);
 regmap_write(asrc_priv->regmap, REG_ASRIDRH(index), ratio >> 24);

 return 0;
}
