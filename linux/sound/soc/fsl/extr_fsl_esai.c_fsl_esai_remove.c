
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_esai {int task; } ;


 struct fsl_esai* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int fsl_esai_remove(struct platform_device *pdev)
{
 struct fsl_esai *esai_priv = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 tasklet_kill(&esai_priv->task);

 return 0;
}
