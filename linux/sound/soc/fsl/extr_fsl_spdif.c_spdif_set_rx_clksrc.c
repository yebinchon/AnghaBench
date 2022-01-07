
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {scalar_t__ rxclk_src; struct regmap* regmap; } ;
typedef enum spdif_gainsel { ____Placeholder_spdif_gainsel } spdif_gainsel ;


 int EINVAL ;
 int GAINSEL_MULTI_MAX ;
 int REG_SPDIF_SRPC ;
 scalar_t__ SRPC_CLKSRC_MAX ;
 int SRPC_CLKSRC_SEL_MASK ;
 int SRPC_CLKSRC_SEL_SET (scalar_t__) ;
 int SRPC_GAINSEL_MASK ;
 int SRPC_GAINSEL_SET (int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int spdif_set_rx_clksrc(struct fsl_spdif_priv *spdif_priv,
    enum spdif_gainsel gainsel, int dpll_locked)
{
 struct regmap *regmap = spdif_priv->regmap;
 u8 clksrc = spdif_priv->rxclk_src;

 if (clksrc >= SRPC_CLKSRC_MAX || gainsel >= GAINSEL_MULTI_MAX)
  return -EINVAL;

 regmap_update_bits(regmap, REG_SPDIF_SRPC,
   SRPC_CLKSRC_SEL_MASK | SRPC_GAINSEL_MASK,
   SRPC_CLKSRC_SEL_SET(clksrc) | SRPC_GAINSEL_SET(gainsel));

 return 0;
}
