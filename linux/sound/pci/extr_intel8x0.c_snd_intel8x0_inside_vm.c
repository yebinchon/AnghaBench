
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_vendor; scalar_t__ subsystem_device; int dev; } ;


 scalar_t__ PCI_SUBDEVICE_ID_QEMU ;
 int PCI_SUBVENDOR_ID_REDHAT_QUMRANET ;
 int dev_info (int *,char*,char*) ;
 int inside_vm ;

__attribute__((used)) static int snd_intel8x0_inside_vm(struct pci_dev *pci)
{
 int result = inside_vm;
 char *msg = ((void*)0);


 if (result >= 0) {
  msg = result ? "enable (forced) VM" : "disable (forced) VM";
  goto fini;
 }


 result = 0;
 if (pci->subsystem_vendor == PCI_SUBVENDOR_ID_REDHAT_QUMRANET &&
     pci->subsystem_device == PCI_SUBDEVICE_ID_QEMU) {

  msg = "enable KVM";
  result = 1;
 } else if (pci->subsystem_vendor == 0x1ab8) {

  msg = "enable Parallels VM";
  result = 1;
 }

fini:
 if (msg != ((void*)0))
  dev_info(&pci->dev, "%s optimization\n", msg);

 return result;
}
