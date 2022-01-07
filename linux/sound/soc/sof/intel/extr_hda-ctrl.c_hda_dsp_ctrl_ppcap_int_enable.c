
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_PP_BAR ;
 int SOF_HDA_PPCTL_PIE ;
 int SOF_HDA_REG_PP_PPCTL ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;

void hda_dsp_ctrl_ppcap_int_enable(struct snd_sof_dev *sdev, bool enable)
{
 u32 val = enable ? SOF_HDA_PPCTL_PIE : 0;

 snd_sof_dsp_update_bits(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
    SOF_HDA_PPCTL_PIE, val);
}
