
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_ADSPCS_CSTALL_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPCS ;
 int hda_dsp_core_reset_enter (struct snd_sof_dev*,unsigned int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;

int hda_dsp_core_stall_reset(struct snd_sof_dev *sdev, unsigned int core_mask)
{

 snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS,
      HDA_DSP_ADSPCS_CSTALL_MASK(core_mask),
      HDA_DSP_ADSPCS_CSTALL_MASK(core_mask));


 return hda_dsp_core_reset_enter(sdev, core_mask);
}
