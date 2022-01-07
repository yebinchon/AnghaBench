
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct intel_sst_drv {int dummy; } ;


 struct intel_sst_drv* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int sst_context_cleanup (struct intel_sst_drv*) ;

__attribute__((used)) static int sst_acpi_remove(struct platform_device *pdev)
{
 struct intel_sst_drv *ctx;

 ctx = platform_get_drvdata(pdev);
 sst_context_cleanup(ctx);
 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
