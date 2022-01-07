
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int AZX_CGCTL_MISCBDCGE_MASK ;
 int AZX_PCIREG_CGCTL ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int update_pci_dword (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void skl_enable_miscbdcge(struct device *dev, bool enable)
{
 struct pci_dev *pci = to_pci_dev(dev);
 u32 val;

 val = enable ? AZX_CGCTL_MISCBDCGE_MASK : 0;

 update_pci_dword(pci, AZX_PCIREG_CGCTL, AZX_CGCTL_MISCBDCGE_MASK, val);
}
