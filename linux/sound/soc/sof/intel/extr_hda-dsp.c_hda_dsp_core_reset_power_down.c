
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;


 int EIO ;
 int dev_err (int ,char*,unsigned int,...) ;
 scalar_t__ hda_dsp_core_is_enabled (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_power_down (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_stall_reset (struct snd_sof_dev*,unsigned int) ;

int hda_dsp_core_reset_power_down(struct snd_sof_dev *sdev,
      unsigned int core_mask)
{
 int ret;


 ret = hda_dsp_core_stall_reset(sdev, core_mask);
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core reset failed: core_mask %x\n",
   core_mask);
  return ret;
 }


 ret = hda_dsp_core_power_down(sdev, core_mask);
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core power down fail mask %x: %d\n",
   core_mask, ret);
  return ret;
 }


 if (hda_dsp_core_is_enabled(sdev, core_mask)) {
  dev_err(sdev->dev, "error: dsp core disable fail mask %x: %d\n",
   core_mask, ret);
  ret = -EIO;
 }

 return ret;
}
