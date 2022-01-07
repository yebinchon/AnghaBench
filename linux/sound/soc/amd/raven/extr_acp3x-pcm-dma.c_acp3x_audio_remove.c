
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct i2s_dev_data {int acp3x_base; } ;


 int acp3x_deinit (int ) ;
 int dev_err (int *,char*) ;
 struct i2s_dev_data* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int acp3x_audio_remove(struct platform_device *pdev)
{
 int ret;
 struct i2s_dev_data *adata = dev_get_drvdata(&pdev->dev);

 ret = acp3x_deinit(adata->acp3x_base);
 if (ret)
  dev_err(&pdev->dev, "ACP de-init failed\n");
 else
  dev_info(&pdev->dev, "ACP de-initialized\n");

 pm_runtime_disable(&pdev->dev);
 return 0;
}
