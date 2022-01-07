
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int PCI_DEVICE_ID_AMD_FE_GATE_7007 ;
 int PCI_DEVICE_ID_VIA_82C598_1 ;
 int PCI_DEVICE_ID_VIA_8365_1 ;
 int PCI_VENDOR_ID_AMD ;
 int PCI_VENDOR_ID_VIA ;
 int dev_info (int *,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int vortex_fix_agp_bridge (struct pci_dev*) ;
 int vortex_fix_latency (struct pci_dev*) ;

__attribute__((used)) static void snd_vortex_workaround(struct pci_dev *vortex, int fix)
{
 struct pci_dev *via = ((void*)0);


 if (fix == 255) {

  via = pci_get_device(PCI_VENDOR_ID_VIA,
   PCI_DEVICE_ID_VIA_8365_1, ((void*)0));

  if (via == ((void*)0)) {
   via = pci_get_device(PCI_VENDOR_ID_VIA,
    PCI_DEVICE_ID_VIA_82C598_1, ((void*)0));

   if (via == ((void*)0))
    via = pci_get_device(PCI_VENDOR_ID_AMD,
     PCI_DEVICE_ID_AMD_FE_GATE_7007, ((void*)0));
  }
  if (via) {
   dev_info(&vortex->dev,
     "Activating latency workaround...\n");
   vortex_fix_latency(vortex);
   vortex_fix_agp_bridge(via);
  }
 } else {
  if (fix & 0x1)
   vortex_fix_latency(vortex);
  if ((fix & 0x2) && (via = pci_get_device(PCI_VENDOR_ID_VIA,
    PCI_DEVICE_ID_VIA_8365_1, ((void*)0))))
   vortex_fix_agp_bridge(via);
  if ((fix & 0x4) && (via = pci_get_device(PCI_VENDOR_ID_VIA,
    PCI_DEVICE_ID_VIA_82C598_1, ((void*)0))))
   vortex_fix_agp_bridge(via);
  if ((fix & 0x8) && (via = pci_get_device(PCI_VENDOR_ID_AMD,
    PCI_DEVICE_ID_AMD_FE_GATE_7007, ((void*)0))))
   vortex_fix_agp_bridge(via);
 }
 pci_dev_put(via);
}
