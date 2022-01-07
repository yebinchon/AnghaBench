
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct snd_sof_dev {int dev; } ;


 int EIO ;
 unsigned int HDA_DSP_ADSPCS_CPA_MASK (unsigned int) ;
 int HDA_DSP_ADSPCS_SPA_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPCS ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 int HDA_DSP_RESET_TIMEOUT_US ;
 int dev_err (int ,char*,...) ;
 unsigned int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int ,unsigned int,int,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;

int hda_dsp_core_power_up(struct snd_sof_dev *sdev, unsigned int core_mask)
{
 unsigned int cpa;
 u32 adspcs;
 int ret;


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPCS,
    HDA_DSP_ADSPCS_SPA_MASK(core_mask),
    HDA_DSP_ADSPCS_SPA_MASK(core_mask));


 cpa = HDA_DSP_ADSPCS_CPA_MASK(core_mask);
 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
         HDA_DSP_REG_ADSPCS, adspcs,
         (adspcs & cpa) == cpa,
         HDA_DSP_REG_POLL_INTERVAL_US,
         HDA_DSP_RESET_TIMEOUT_US);
 if (ret < 0)
  dev_err(sdev->dev, "error: timeout on core powerup\n");


 adspcs = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS);
 if ((adspcs & HDA_DSP_ADSPCS_CPA_MASK(core_mask)) !=
  HDA_DSP_ADSPCS_CPA_MASK(core_mask)) {
  dev_err(sdev->dev,
   "error: power up core failed core_mask %xadspcs 0x%x\n",
   core_mask, adspcs);
  ret = -EIO;
 }

 return ret;
}
