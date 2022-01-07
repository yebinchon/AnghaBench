
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;


 int AZX_CGCTL_ADSPDCGE ;
 int AZX_PCIREG_CGCTL ;
 int AZX_PCIREG_PGCTL ;
 int AZX_PGCTL_ADSPPGD ;
 int AZX_REG_VS_EM2_L1SEN ;
 int VS_EM2 ;
 struct hdac_bus* pci_get_drvdata (struct pci_dev*) ;
 int snd_hdac_chip_updatel (struct hdac_bus*,int ,int ,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int update_pci_dword (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void skl_clock_power_gating(struct device *dev, bool enable)
{
 struct pci_dev *pci = to_pci_dev(dev);
 struct hdac_bus *bus = pci_get_drvdata(pci);
 u32 val;


 val = enable ? AZX_CGCTL_ADSPDCGE : 0;
 update_pci_dword(pci, AZX_PCIREG_CGCTL, AZX_CGCTL_ADSPDCGE, val);


 val = enable ? AZX_REG_VS_EM2_L1SEN : 0;
 snd_hdac_chip_updatel(bus, VS_EM2, AZX_REG_VS_EM2_L1SEN, val);


 val = enable ? 0 : AZX_PGCTL_ADSPPGD;
 update_pci_dword(pci, AZX_PCIREG_PGCTL, AZX_PGCTL_ADSPPGD, val);
}
