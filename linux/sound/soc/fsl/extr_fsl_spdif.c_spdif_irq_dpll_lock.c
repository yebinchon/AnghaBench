
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {int dpll_locked; struct platform_device* pdev; struct regmap* regmap; } ;


 int REG_SPDIF_SRPC ;
 int SRPC_DPLL_LOCKED ;
 int dev_dbg (int *,char*,char*) ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static void spdif_irq_dpll_lock(struct fsl_spdif_priv *spdif_priv)
{
 struct regmap *regmap = spdif_priv->regmap;
 struct platform_device *pdev = spdif_priv->pdev;
 u32 locked;

 regmap_read(regmap, REG_SPDIF_SRPC, &locked);
 locked &= SRPC_DPLL_LOCKED;

 dev_dbg(&pdev->dev, "isr: Rx dpll %s \n",
   locked ? "locked" : "loss lock");

 spdif_priv->dpll_locked = locked ? 1 : 0;
}
