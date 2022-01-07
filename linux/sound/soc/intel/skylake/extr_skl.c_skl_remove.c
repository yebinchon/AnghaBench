
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {int nhlt; int probe_work; } ;
struct pci_dev {int dev; } ;
struct hdac_bus {int dummy; } ;


 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int cancel_work_sync (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int intel_nhlt_free (int ) ;
 struct hdac_bus* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;
 int skl_clock_device_unregister (struct skl_dev*) ;
 int skl_dmic_device_unregister (struct skl_dev*) ;
 int skl_free (struct hdac_bus*) ;
 int skl_free_dsp (struct skl_dev*) ;
 int skl_machine_device_unregister (struct skl_dev*) ;
 int skl_nhlt_remove_sysfs (struct skl_dev*) ;
 int skl_platform_unregister (int *) ;
 int snd_hdac_ext_bus_device_remove (struct hdac_bus*) ;

__attribute__((used)) static void skl_remove(struct pci_dev *pci)
{
 struct hdac_bus *bus = pci_get_drvdata(pci);
 struct skl_dev *skl = bus_to_skl(bus);

 cancel_work_sync(&skl->probe_work);

 pm_runtime_get_noresume(&pci->dev);


 snd_hdac_ext_bus_device_remove(bus);

 skl_platform_unregister(&pci->dev);
 skl_free_dsp(skl);
 skl_machine_device_unregister(skl);
 skl_dmic_device_unregister(skl);
 skl_clock_device_unregister(skl);
 skl_nhlt_remove_sysfs(skl);
 intel_nhlt_free(skl->nhlt);
 skl_free(bus);
 dev_set_drvdata(&pci->dev, ((void*)0));
}
