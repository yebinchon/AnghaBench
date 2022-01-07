
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_BAR ;
 int HDA_DSP_REG_HIPCCTL ;
 int HDA_DSP_REG_HIPCCTL_DONE ;
 int HDA_DSP_REG_HIPCIE ;
 int HDA_DSP_REG_HIPCIE_DONE ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int snd_sof_dsp_update_bits_forced (struct snd_sof_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void hda_dsp_ipc_dsp_done(struct snd_sof_dev *sdev)
{




 snd_sof_dsp_update_bits_forced(sdev, HDA_DSP_BAR,
           HDA_DSP_REG_HIPCIE,
           HDA_DSP_REG_HIPCIE_DONE,
           HDA_DSP_REG_HIPCIE_DONE);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR,
    HDA_DSP_REG_HIPCCTL,
    HDA_DSP_REG_HIPCCTL_DONE,
    HDA_DSP_REG_HIPCCTL_DONE);
}
