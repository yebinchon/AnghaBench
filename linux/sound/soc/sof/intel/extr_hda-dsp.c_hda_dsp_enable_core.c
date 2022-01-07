
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;


 int dev_err (int ,char*,unsigned int) ;
 scalar_t__ hda_dsp_core_is_enabled (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_power_up (struct snd_sof_dev*,unsigned int) ;
 int hda_dsp_core_run (struct snd_sof_dev*,unsigned int) ;

int hda_dsp_enable_core(struct snd_sof_dev *sdev, unsigned int core_mask)
{
 int ret;


 if (hda_dsp_core_is_enabled(sdev, core_mask))
  return 0;


 ret = hda_dsp_core_power_up(sdev, core_mask);
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core power up failed: core_mask %x\n",
   core_mask);
  return ret;
 }

 return hda_dsp_core_run(sdev, core_mask);
}
