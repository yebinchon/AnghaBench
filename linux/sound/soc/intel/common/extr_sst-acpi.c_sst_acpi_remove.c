
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {int fw; } ;
struct sst_acpi_priv {int pdev_pcm; int pdev_mach; struct sst_pdata sst_pdata; } ;
struct platform_device {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int platform_device_unregister (int ) ;
 struct sst_acpi_priv* platform_get_drvdata (struct platform_device*) ;
 int release_firmware (int ) ;

__attribute__((used)) static int sst_acpi_remove(struct platform_device *pdev)
{
 struct sst_acpi_priv *sst_acpi = platform_get_drvdata(pdev);
 struct sst_pdata *sst_pdata = &sst_acpi->sst_pdata;

 platform_device_unregister(sst_acpi->pdev_mach);
 if (!IS_ERR_OR_NULL(sst_acpi->pdev_pcm))
  platform_device_unregister(sst_acpi->pdev_pcm);
 release_firmware(sst_pdata->fw);

 return 0;
}
