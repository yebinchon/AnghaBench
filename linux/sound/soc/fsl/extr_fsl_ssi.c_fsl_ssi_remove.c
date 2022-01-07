
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct fsl_ssi {int ac97_reg_lock; TYPE_1__* soc; scalar_t__ card_pdev; int dbg_stats; } ;
struct TYPE_2__ {scalar_t__ imx; } ;


 struct fsl_ssi* dev_get_drvdata (int *) ;
 int fsl_ssi_debugfs_remove (int *) ;
 int fsl_ssi_hw_clean (struct fsl_ssi*) ;
 int fsl_ssi_imx_clean (struct platform_device*,struct fsl_ssi*) ;
 scalar_t__ fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 int mutex_destroy (int *) ;
 int platform_device_unregister (scalar_t__) ;
 int snd_soc_set_ac97_ops (int *) ;

__attribute__((used)) static int fsl_ssi_remove(struct platform_device *pdev)
{
 struct fsl_ssi *ssi = dev_get_drvdata(&pdev->dev);

 fsl_ssi_debugfs_remove(&ssi->dbg_stats);

 if (ssi->card_pdev)
  platform_device_unregister(ssi->card_pdev);


 fsl_ssi_hw_clean(ssi);

 if (ssi->soc->imx)
  fsl_ssi_imx_clean(pdev, ssi);

 if (fsl_ssi_is_ac97(ssi)) {
  snd_soc_set_ac97_ops(((void*)0));
  mutex_destroy(&ssi->ac97_reg_lock);
 }

 return 0;
}
