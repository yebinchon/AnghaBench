
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SND_SOF_SUSPEND_DELAY_MS ;
 int dev_dbg (struct device*,char*) ;
 int pm_runtime_allow (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;

__attribute__((used)) static void sof_pci_probe_complete(struct device *dev)
{
 dev_dbg(dev, "Completing SOF PCI probe");


 pm_runtime_set_autosuspend_delay(dev, SND_SOF_SUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(dev);





 pm_runtime_allow(dev);


 pm_runtime_mark_last_busy(dev);


 pm_runtime_put_noidle(dev);
}
