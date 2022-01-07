
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ pci_cfg; } ;
struct sst_dsp {TYPE_1__ addr; } ;


 int SST_CLKCTL ;
 int SST_CLKCTL_MASK ;
 scalar_t__ SST_PMCS ;
 int SST_PMCS_PS_MASK ;
 int SST_VDRTCL0_D3PGD ;
 int SST_VDRTCL0_D3SRAMPGD ;
 int SST_VDRTCL0_DSRAMPGE_MASK ;
 int SST_VDRTCL0_ISRAMPGE_MASK ;
 int SST_VDRTCL2_APLLSE_MASK ;
 int SST_VDRTCL2_DCLCGE ;
 int SST_VDRTCL2_DTCGE ;
 scalar_t__ SST_VDRTCTL0 ;
 scalar_t__ SST_VDRTCTL2 ;
 int readl (scalar_t__) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hsw_set_dsp_D3(struct sst_dsp *sst)
{
 u32 val;
 u32 reg;


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 reg &= ~(SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE);
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL2);


 val = readl(sst->addr.pci_cfg + SST_VDRTCTL0);
 val |= SST_VDRTCL0_DSRAMPGE_MASK |
  SST_VDRTCL0_ISRAMPGE_MASK;
 val &= ~(SST_VDRTCL0_D3PGD | SST_VDRTCL0_D3SRAMPGD);
 writel(val, sst->addr.pci_cfg + SST_VDRTCTL0);


 val = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 val |= SST_VDRTCL2_APLLSE_MASK;
 writel(val, sst->addr.pci_cfg + SST_VDRTCTL2);


 sst_dsp_shim_update_bits_unlocked(sst, SST_CLKCTL,
  SST_CLKCTL_MASK, 0);


 val = readl(sst->addr.pci_cfg + SST_PMCS);
 val |= SST_PMCS_PS_MASK;
 writel(val, sst->addr.pci_cfg + SST_PMCS);
 udelay(50);


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 reg |= SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE;
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL2);

 udelay(50);

}
