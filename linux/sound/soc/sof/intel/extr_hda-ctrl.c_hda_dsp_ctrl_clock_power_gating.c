
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_HDA_BAR ;
 int HDA_VS_INTEL_EM2 ;
 int HDA_VS_INTEL_EM2_L1SEN ;
 int PCI_CGCTL ;
 int PCI_CGCTL_ADSPDCGE ;
 int PCI_PGCTL ;
 int PCI_PGCTL_ADSPPGD ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int snd_sof_pci_update_bits (struct snd_sof_dev*,int ,int ,int ) ;

int hda_dsp_ctrl_clock_power_gating(struct snd_sof_dev *sdev, bool enable)
{
 u32 val;


 val = enable ? PCI_CGCTL_ADSPDCGE : 0;
 snd_sof_pci_update_bits(sdev, PCI_CGCTL, PCI_CGCTL_ADSPDCGE, val);


 val = enable ? HDA_VS_INTEL_EM2_L1SEN : 0;
 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, HDA_VS_INTEL_EM2,
    HDA_VS_INTEL_EM2_L1SEN, val);


 val = enable ? 0 : PCI_PGCTL_ADSPPGD;
 snd_sof_pci_update_bits(sdev, PCI_PGCTL, PCI_PGCTL_ADSPPGD, val);

 return 0;
}
