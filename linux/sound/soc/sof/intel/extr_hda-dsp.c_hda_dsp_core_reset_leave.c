
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct snd_sof_dev {int dev; } ;


 int EIO ;
 unsigned int HDA_DSP_ADSPCS_CRST_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPCS ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 int HDA_DSP_RESET_TIMEOUT_US ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 unsigned int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int ,unsigned int,int,int ,int ) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,unsigned int,int ) ;

int hda_dsp_core_reset_leave(struct snd_sof_dev *sdev, unsigned int core_mask)
{
 unsigned int crst;
 u32 adspcs;
 int ret;


 snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS,
      HDA_DSP_ADSPCS_CRST_MASK(core_mask),
      0);


 crst = HDA_DSP_ADSPCS_CRST_MASK(core_mask);
 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
         HDA_DSP_REG_ADSPCS, adspcs,
         !(adspcs & crst),
         HDA_DSP_REG_POLL_INTERVAL_US,
         HDA_DSP_RESET_TIMEOUT_US);


 adspcs = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS);
 if ((adspcs & HDA_DSP_ADSPCS_CRST_MASK(core_mask)) != 0) {
  dev_err(sdev->dev,
   "error: reset leave failed: core_mask %x adspcs 0x%x\n",
   core_mask, adspcs);
  ret = -EIO;
 }

 return ret;
}
