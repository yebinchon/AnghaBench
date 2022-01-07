
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dev; } ;


 int SST_SUSPEND_DELAY ;
 scalar_t__ acpi_disabled ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_active (int ) ;
 int pm_runtime_set_autosuspend_delay (int ,int ) ;
 int pm_runtime_use_autosuspend (int ) ;

void sst_configure_runtime_pm(struct intel_sst_drv *ctx)
{
 pm_runtime_set_autosuspend_delay(ctx->dev, SST_SUSPEND_DELAY);
 pm_runtime_use_autosuspend(ctx->dev);






 if (!acpi_disabled)
  pm_runtime_set_active(ctx->dev);

 pm_runtime_enable(ctx->dev);

 if (acpi_disabled)
  pm_runtime_set_active(ctx->dev);
 else
  pm_runtime_put_noidle(ctx->dev);
}
