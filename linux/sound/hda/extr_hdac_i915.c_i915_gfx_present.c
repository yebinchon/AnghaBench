
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int class; int class_mask; int member_0; } ;




 int PCI_DEVICE (int ,int ) ;

 int pci_dev_present (struct pci_device_id const*) ;

__attribute__((used)) static bool i915_gfx_present(void)
{
 static const struct pci_device_id ids[] = {
  { PCI_DEVICE(128, 130),
    .class = 129 << 16,
    .class_mask = 0xff << 16 },
  {}
 };
 return pci_dev_present(ids);
}
