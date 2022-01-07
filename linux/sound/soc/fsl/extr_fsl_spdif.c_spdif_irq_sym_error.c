
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {int dpll_locked; struct platform_device* pdev; struct regmap* regmap; } ;


 int INT_SYM_ERR ;
 int REG_SPDIF_SIE ;
 int dev_dbg (int *,char*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void spdif_irq_sym_error(struct fsl_spdif_priv *spdif_priv)
{
 struct regmap *regmap = spdif_priv->regmap;
 struct platform_device *pdev = spdif_priv->pdev;

 dev_dbg(&pdev->dev, "isr: receiver found illegal symbol\n");


 if (!spdif_priv->dpll_locked)
  regmap_update_bits(regmap, REG_SPDIF_SIE, INT_SYM_ERR, 0);
}
