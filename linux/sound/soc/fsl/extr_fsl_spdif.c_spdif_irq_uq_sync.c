
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_mixer_control {int qpos; int ready_buf; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {struct platform_device* pdev; struct spdif_mixer_control fsl_spdif_control; } ;


 int SPDIF_QSUB_SIZE ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void spdif_irq_uq_sync(struct fsl_spdif_priv *spdif_priv)
{
 struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
 struct platform_device *pdev = spdif_priv->pdev;

 dev_dbg(&pdev->dev, "isr: U/Q Channel sync found\n");


 if (ctrl->qpos == 0)
  return;


 ctrl->ready_buf = (ctrl->qpos - 1) / SPDIF_QSUB_SIZE + 1;
}
