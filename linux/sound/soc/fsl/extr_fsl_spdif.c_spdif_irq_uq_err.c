
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_mixer_control {scalar_t__ qpos; scalar_t__ upos; scalar_t__ ready_buf; } ;
struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {struct platform_device* pdev; struct regmap* regmap; struct spdif_mixer_control fsl_spdif_control; } ;


 int REG_SPDIF_SRQ ;
 int REG_SPDIF_SRU ;
 int dev_dbg (int *,char*) ;
 int regmap_read (struct regmap*,int ,int *) ;

__attribute__((used)) static void spdif_irq_uq_err(struct fsl_spdif_priv *spdif_priv)
{
 struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
 struct regmap *regmap = spdif_priv->regmap;
 struct platform_device *pdev = spdif_priv->pdev;
 u32 val;

 dev_dbg(&pdev->dev, "isr: U/Q Channel framing error\n");


 regmap_read(regmap, REG_SPDIF_SRU, &val);
 regmap_read(regmap, REG_SPDIF_SRQ, &val);


 ctrl->ready_buf = 0;
 ctrl->upos = 0;
 ctrl->qpos = 0;
}
