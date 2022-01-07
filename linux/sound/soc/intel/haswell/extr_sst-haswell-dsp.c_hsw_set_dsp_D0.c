
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ pci_cfg; } ;
struct sst_dsp {TYPE_1__ addr; } ;


 int ENODEV ;
 int SST_CLKCTL ;
 int SST_CLKCTL_DCPLCG ;
 int SST_CLKCTL_MASK ;
 int SST_CLKCTL_SCOE0 ;
 int SST_CSR ;
 int SST_CSR2 ;
 int SST_CSR2_SDFD_SSP1 ;
 int SST_CSR_DCS (int) ;
 int SST_CSR_DCS_MASK ;
 int SST_CSR_LPCS ;
 int SST_CSR_S1IOCS ;
 int SST_CSR_SBCS1 ;
 int SST_CSR_STALL ;
 int SST_HMDC ;
 int SST_HMDC_HDDA_E0_ALLCH ;
 int SST_HMDC_HDDA_E1_ALLCH ;
 int SST_IMRD ;
 int SST_IMRD_BUSY ;
 int SST_IMRD_DMAC ;
 int SST_IMRD_DONE ;
 int SST_IMRD_SSP0 ;
 int SST_IMRX ;
 int SST_IMRX_BUSY ;
 int SST_IMRX_DONE ;
 int SST_IPCD ;
 int SST_IPCX ;
 scalar_t__ SST_PMCS ;
 int SST_PMCS_PS_MASK ;
 int SST_VDRTCL0_D3PGD ;
 int SST_VDRTCL0_DSRAMPGE_MASK ;
 int SST_VDRTCL0_DSRAMPGE_SHIFT ;
 int SST_VDRTCL0_ISRAMPGE_MASK ;
 int SST_VDRTCL2_APLLSE_MASK ;
 int SST_VDRTCL2_DCLCGE ;
 int SST_VDRTCL2_DTCGE ;
 scalar_t__ SST_VDRTCTL0 ;
 scalar_t__ SST_VDRTCTL2 ;
 int hsw_reset (struct sst_dsp*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int,int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int,int) ;
 int sst_dsp_shim_write (struct sst_dsp*,int,int) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hsw_set_dsp_D0(struct sst_dsp *sst)
{
 int tries = 10;
 u32 reg, fw_dump_bit;


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 reg &= ~(SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE);
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL2);


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL0);
 reg |= SST_VDRTCL0_D3PGD;
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL0);


 reg = readl(sst->addr.pci_cfg + SST_PMCS);
 reg &= ~SST_PMCS_PS_MASK;
 writel(reg, sst->addr.pci_cfg + SST_PMCS);


 while (tries--) {
  reg = readl(sst->addr.pci_cfg + SST_PMCS) & SST_PMCS_PS_MASK;
  if (reg == 0)
   goto finish;

  msleep(1);
 }

 return -ENODEV;

finish:

 sst_dsp_shim_update_bits_unlocked(sst, SST_CSR,
  SST_CSR_S1IOCS | SST_CSR_SBCS1 | SST_CSR_LPCS, 0x0);


 sst_dsp_shim_update_bits_unlocked(sst,
  SST_CSR, SST_CSR_STALL | SST_CSR_DCS_MASK,
  SST_CSR_STALL | SST_CSR_DCS(4));


 sst_dsp_shim_update_bits_unlocked(sst, SST_CLKCTL,
  SST_CLKCTL_MASK | SST_CLKCTL_DCPLCG | SST_CLKCTL_SCOE0,
  SST_CLKCTL_MASK | SST_CLKCTL_DCPLCG | SST_CLKCTL_SCOE0);


 hsw_reset(sst);


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 reg |= SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE;
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL2);

 udelay(50);


 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 reg &= ~SST_VDRTCL2_APLLSE_MASK;
 writel(reg, sst->addr.pci_cfg + SST_VDRTCTL2);



 reg = readl(sst->addr.pci_cfg + SST_VDRTCTL0);
 reg |= SST_VDRTCL0_DSRAMPGE_MASK | SST_VDRTCL0_ISRAMPGE_MASK;

 fw_dump_bit = 1 << SST_VDRTCL0_DSRAMPGE_SHIFT;
 writel(reg & ~fw_dump_bit, sst->addr.pci_cfg + SST_VDRTCTL0);



 sst_dsp_shim_update_bits_unlocked(sst, SST_CSR2, SST_CSR2_SDFD_SSP1,
  SST_CSR2_SDFD_SSP1);


 sst_dsp_shim_update_bits(sst, SST_HMDC,
   SST_HMDC_HDDA_E0_ALLCH | SST_HMDC_HDDA_E1_ALLCH,
   SST_HMDC_HDDA_E0_ALLCH | SST_HMDC_HDDA_E1_ALLCH);


 sst_dsp_shim_update_bits(sst, SST_IMRX, (SST_IMRX_BUSY | SST_IMRX_DONE),
     0x0);
 sst_dsp_shim_update_bits(sst, SST_IMRD, (SST_IMRD_DONE | SST_IMRD_BUSY |
    SST_IMRD_SSP0 | SST_IMRD_DMAC), 0x0);


 sst_dsp_shim_write(sst, SST_IPCX, 0x0);
 sst_dsp_shim_write(sst, SST_IPCD, 0x0);
 sst_dsp_shim_write(sst, 0x80, 0x6);
 sst_dsp_shim_write(sst, 0xe0, 0x300a);

 return 0;
}
