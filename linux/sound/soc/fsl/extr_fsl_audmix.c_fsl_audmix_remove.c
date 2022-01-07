
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_audmix {scalar_t__ pdev; } ;


 struct fsl_audmix* dev_get_drvdata (int *) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static int fsl_audmix_remove(struct platform_device *pdev)
{
 struct fsl_audmix *priv = dev_get_drvdata(&pdev->dev);

 if (priv->pdev)
  platform_device_unregister(priv->pdev);

 return 0;
}
