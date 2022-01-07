
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct audio_drv_data {int acp_mmio; } ;


 int acp_deinit (int ) ;
 int dev_err (int *,char*,int) ;
 struct audio_drv_data* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int acp_audio_remove(struct platform_device *pdev)
{
 int status;
 struct audio_drv_data *adata = dev_get_drvdata(&pdev->dev);

 status = acp_deinit(adata->acp_mmio);
 if (status)
  dev_err(&pdev->dev, "ACP Deinit failed status:%d\n", status);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
