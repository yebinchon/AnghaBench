
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_ADSPCS_SPA_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_PD_TIMEOUT ;
 int HDA_DSP_REG_ADSPCS ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 int USEC_PER_MSEC ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int ,int,int,int ,int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int,int ) ;

int hda_dsp_core_power_down(struct snd_sof_dev *sdev, unsigned int core_mask)
{
 u32 adspcs;


 snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS,
      HDA_DSP_ADSPCS_SPA_MASK(core_mask), 0);

 return snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
    HDA_DSP_REG_ADSPCS, adspcs,
    !(adspcs & HDA_DSP_ADSPCS_SPA_MASK(core_mask)),
    HDA_DSP_REG_POLL_INTERVAL_US,
    HDA_DSP_PD_TIMEOUT * USEC_PER_MSEC);
}
