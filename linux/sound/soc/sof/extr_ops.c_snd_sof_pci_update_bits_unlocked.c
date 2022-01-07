
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct snd_sof_dev {int dev; } ;
struct pci_dev {int dummy; } ;


 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,unsigned int,unsigned int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static
bool snd_sof_pci_update_bits_unlocked(struct snd_sof_dev *sdev, u32 offset,
          u32 mask, u32 value)
{
 struct pci_dev *pci = to_pci_dev(sdev->dev);
 unsigned int old, new;
 u32 ret = 0;

 pci_read_config_dword(pci, offset, &ret);
 old = ret;
 dev_dbg(sdev->dev, "Debug PCIR: %8.8x at  %8.8x\n", old & mask, offset);

 new = (old & ~mask) | (value & mask);

 if (old == new)
  return 0;

 pci_write_config_dword(pci, offset, new);
 dev_dbg(sdev->dev, "Debug PCIW: %8.8x at  %8.8x\n", value,
  offset);

 return 1;
}
