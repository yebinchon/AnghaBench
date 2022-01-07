
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_tegra {scalar_t__ regs; } ;


 int HDA_BAR0_FINAL_PROGRAM ;
 int HDA_BAR0_INIT_PROGRAM ;
 scalar_t__ HDA_CFG_BAR0 ;
 scalar_t__ HDA_CFG_CMD ;
 int HDA_DISABLE_INTR ;
 int HDA_ENABLE_BUS_MASTER ;
 int HDA_ENABLE_IO_SPACE ;
 int HDA_ENABLE_MEM_SPACE ;
 int HDA_ENABLE_SERR ;
 int HDA_FPCI_BAR0_START ;
 scalar_t__ HDA_IPFS_CONFIG ;
 int HDA_IPFS_EN_FPCI ;
 int HDA_IPFS_EN_INTR ;
 scalar_t__ HDA_IPFS_FPCI_BAR0 ;
 scalar_t__ HDA_IPFS_INTR_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hda_tegra_init(struct hda_tegra *hda)
{
 u32 v;


 v = readl(hda->regs + HDA_IPFS_CONFIG);
 v |= HDA_IPFS_EN_FPCI;
 writel(v, hda->regs + HDA_IPFS_CONFIG);


 v = readl(hda->regs + HDA_CFG_CMD);
 v &= ~HDA_DISABLE_INTR;
 v |= HDA_ENABLE_MEM_SPACE | HDA_ENABLE_IO_SPACE |
  HDA_ENABLE_BUS_MASTER | HDA_ENABLE_SERR;
 writel(v, hda->regs + HDA_CFG_CMD);

 writel(HDA_BAR0_INIT_PROGRAM, hda->regs + HDA_CFG_BAR0);
 writel(HDA_BAR0_FINAL_PROGRAM, hda->regs + HDA_CFG_BAR0);
 writel(HDA_FPCI_BAR0_START, hda->regs + HDA_IPFS_FPCI_BAR0);

 v = readl(hda->regs + HDA_IPFS_INTR_MASK);
 v |= HDA_IPFS_EN_INTR;
 writel(v, hda->regs + HDA_IPFS_INTR_MASK);
}
