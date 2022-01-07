
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dev; } ;


 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

int sst_pm_runtime_put(struct intel_sst_drv *sst_drv)
{
 int ret;

 pm_runtime_mark_last_busy(sst_drv->dev);
 ret = pm_runtime_put_autosuspend(sst_drv->dev);
 if (ret < 0)
  return ret;
 return 0;
}
