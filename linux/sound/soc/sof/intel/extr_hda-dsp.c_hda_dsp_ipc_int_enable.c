
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sof_intel_hda_dev {struct sof_intel_dsp_desc* desc; } ;
struct sof_intel_dsp_desc {int ipc_ctl; } ;
struct snd_sof_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int HDA_DSP_ADSPIC_IPC ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPIC ;
 int HDA_DSP_REG_HIPCCTL_BUSY ;
 int HDA_DSP_REG_HIPCCTL_DONE ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int,int) ;

void hda_dsp_ipc_int_enable(struct snd_sof_dev *sdev)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 const struct sof_intel_dsp_desc *chip = hda->desc;


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR, chip->ipc_ctl,
   HDA_DSP_REG_HIPCCTL_DONE | HDA_DSP_REG_HIPCCTL_BUSY,
   HDA_DSP_REG_HIPCCTL_DONE | HDA_DSP_REG_HIPCCTL_BUSY);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIC,
    HDA_DSP_ADSPIC_IPC, HDA_DSP_ADSPIC_IPC);
}
