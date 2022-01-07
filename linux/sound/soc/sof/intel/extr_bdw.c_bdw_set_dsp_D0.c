
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {scalar_t__* bar; } ;


 size_t BDW_DSP_BAR ;
 size_t BDW_PCI_BAR ;
 int ENODEV ;
 scalar_t__ PCI_PMCS ;
 int PCI_PMCS_PS_MASK ;
 int PCI_VDRTCL0_D3PGD ;
 int PCI_VDRTCL2_APLLSE_MASK ;
 int PCI_VDRTCL2_DCLCGE ;
 int PCI_VDRTCL2_DTCGE ;
 scalar_t__ PCI_VDRTCTL0 ;
 scalar_t__ PCI_VDRTCTL2 ;
 scalar_t__ SHIM_CLKCTL ;
 int SHIM_CLKCTL_DCPLCG ;
 int SHIM_CLKCTL_MASK ;
 int SHIM_CLKCTL_SCOE0 ;
 scalar_t__ SHIM_CSR ;
 scalar_t__ SHIM_CSR2 ;
 int SHIM_CSR2_SDFD_SSP1 ;
 int SHIM_CSR_DCS (int) ;
 int SHIM_CSR_DCS_MASK ;
 int SHIM_CSR_LPCS ;
 int SHIM_CSR_S1IOCS ;
 int SHIM_CSR_SBCS1 ;
 int SHIM_CSR_STALL ;
 int SHIM_HMDC ;
 int SHIM_HMDC_HDDA_E0_ALLCH ;
 int SHIM_HMDC_HDDA_E1_ALLCH ;
 int SHIM_IMRD ;
 int SHIM_IMRD_BUSY ;
 int SHIM_IMRD_DMAC ;
 int SHIM_IMRD_DONE ;
 int SHIM_IMRD_SSP0 ;
 int SHIM_IMRX ;
 int SHIM_IMRX_BUSY ;
 int SHIM_IMRX_DONE ;
 int SHIM_IPCD ;
 int SHIM_IPCX ;
 int bdw_reset (struct snd_sof_dev*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,size_t,int ,int,int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,size_t,scalar_t__,int,int) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,size_t,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bdw_set_dsp_D0(struct snd_sof_dev *sdev)
{
 int tries = 10;
 u32 reg;


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_VDRTCTL2,
      PCI_VDRTCL2_DCLCGE |
      PCI_VDRTCL2_DTCGE, 0);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_VDRTCTL0,
      PCI_VDRTCL0_D3PGD, PCI_VDRTCL0_D3PGD);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_PMCS,
      PCI_PMCS_PS_MASK, 0);


 while (tries--) {
  reg = readl(sdev->bar[BDW_PCI_BAR] + PCI_PMCS)
   & PCI_PMCS_PS_MASK;
  if (reg == 0)
   goto finish;

  msleep(20);
 }

 return -ENODEV;

finish:




 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CSR,
      SHIM_CSR_S1IOCS | SHIM_CSR_SBCS1 |
      SHIM_CSR_LPCS, 0x0);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR,
      SHIM_CSR, SHIM_CSR_STALL |
      SHIM_CSR_DCS_MASK,
      SHIM_CSR_STALL |
      SHIM_CSR_DCS(4));


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CLKCTL,
      SHIM_CLKCTL_MASK |
      SHIM_CLKCTL_DCPLCG |
      SHIM_CLKCTL_SCOE0,
      SHIM_CLKCTL_MASK |
      SHIM_CLKCTL_DCPLCG |
      SHIM_CLKCTL_SCOE0);


 bdw_reset(sdev);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_VDRTCTL2,
      PCI_VDRTCL2_DCLCGE |
      PCI_VDRTCL2_DTCGE,
      PCI_VDRTCL2_DCLCGE |
      PCI_VDRTCL2_DTCGE);

 usleep_range(50, 55);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_VDRTCTL2,
      PCI_VDRTCL2_APLLSE_MASK, 0);






 snd_sof_dsp_update_bits_unlocked(sdev, BDW_PCI_BAR, PCI_VDRTCTL0,
      0xfffffffC, 0x0);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CSR2,
      SHIM_CSR2_SDFD_SSP1,
      SHIM_CSR2_SDFD_SSP1);


 snd_sof_dsp_update_bits(sdev, BDW_DSP_BAR, SHIM_HMDC,
    SHIM_HMDC_HDDA_E0_ALLCH |
    SHIM_HMDC_HDDA_E1_ALLCH,
    SHIM_HMDC_HDDA_E0_ALLCH |
    SHIM_HMDC_HDDA_E1_ALLCH);


 snd_sof_dsp_update_bits(sdev, BDW_DSP_BAR, SHIM_IMRX,
    (SHIM_IMRX_BUSY | SHIM_IMRX_DONE), 0x0);
 snd_sof_dsp_update_bits(sdev, BDW_DSP_BAR, SHIM_IMRD,
    (SHIM_IMRD_DONE | SHIM_IMRD_BUSY |
    SHIM_IMRD_SSP0 | SHIM_IMRD_DMAC), 0x0);


 snd_sof_dsp_write(sdev, BDW_DSP_BAR, SHIM_IPCX, 0x0);
 snd_sof_dsp_write(sdev, BDW_DSP_BAR, SHIM_IPCD, 0x0);
 snd_sof_dsp_write(sdev, BDW_DSP_BAR, 0x80, 0x6);
 snd_sof_dsp_write(sdev, BDW_DSP_BAR, 0xe0, 0x300a);

 return 0;
}
