
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;


 int EIO ;
 int HDA_DSP_ADSPCS_CSTALL_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPCS ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int hda_dsp_core_is_enabled (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_reset_leave (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_stall_reset (struct snd_sof_dev*,unsigned int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;

int hda_dsp_core_run(struct snd_sof_dev *sdev, unsigned int core_mask)
{
 int ret;


 ret = hda_dsp_core_reset_leave(sdev, core_mask);
 if (ret < 0)
  return ret;


 dev_dbg(sdev->dev, "unstall/run core: core_mask = %x\n", core_mask);
 snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_ADSPCS,
      HDA_DSP_ADSPCS_CSTALL_MASK(core_mask),
      0);


 if (!hda_dsp_core_is_enabled(sdev, core_mask)) {
  hda_dsp_core_stall_reset(sdev, core_mask);
  dev_err(sdev->dev, "error: DSP start core failed: core_mask %x\n",
   core_mask);
  ret = -EIO;
 }

 return ret;
}
