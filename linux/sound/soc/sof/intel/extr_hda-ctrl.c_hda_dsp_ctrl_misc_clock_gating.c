
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int PCI_CGCTL ;
 int PCI_CGCTL_MISCBDCGE_MASK ;
 int snd_sof_pci_update_bits (struct snd_sof_dev*,int ,int ,int ) ;

void hda_dsp_ctrl_misc_clock_gating(struct snd_sof_dev *sdev, bool enable)
{
 u32 val = enable ? PCI_CGCTL_MISCBDCGE_MASK : 0;

 snd_sof_pci_update_bits(sdev, PCI_CGCTL, PCI_CGCTL_MISCBDCGE_MASK, val);
}
