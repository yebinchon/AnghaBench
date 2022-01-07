
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_dev {TYPE_1__* pci; } ;
struct hdac_bus {int irq; int dev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int dev_err (int ,char*,int ) ;
 int pci_intx (TYPE_1__*,int) ;
 int request_threaded_irq (int ,int ,int ,int ,int ,struct hdac_bus*) ;
 int skl_interrupt ;
 int skl_threaded_handler ;

__attribute__((used)) static int skl_acquire_irq(struct hdac_bus *bus, int do_disconnect)
{
 struct skl_dev *skl = bus_to_skl(bus);
 int ret;

 ret = request_threaded_irq(skl->pci->irq, skl_interrupt,
   skl_threaded_handler,
   IRQF_SHARED,
   KBUILD_MODNAME, bus);
 if (ret) {
  dev_err(bus->dev,
   "unable to grab IRQ %d, disabling device\n",
   skl->pci->irq);
  return ret;
 }

 bus->irq = skl->pci->irq;
 pci_intx(skl->pci, 1);

 return 0;
}
