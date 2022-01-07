
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;


 int EIO ;
 int HDA_DSP_CTRL_RESET_TIMEOUT ;
 int HDA_DSP_HDA_BAR ;
 int SOF_HDA_GCTL ;
 int SOF_HDA_GCTL_RESET ;
 int dev_err (int ,char*,char*,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

int hda_dsp_ctrl_link_reset(struct snd_sof_dev *sdev, bool reset)
{
 unsigned long timeout;
 u32 gctl = 0;
 u32 val;


 val = reset ? 0 : SOF_HDA_GCTL_RESET;


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, SOF_HDA_GCTL,
    SOF_HDA_GCTL_RESET, val);


 timeout = jiffies + msecs_to_jiffies(HDA_DSP_CTRL_RESET_TIMEOUT);
 while (time_before(jiffies, timeout)) {
  gctl = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, SOF_HDA_GCTL);
  if ((gctl & SOF_HDA_GCTL_RESET) == val)
   return 0;
  usleep_range(500, 1000);
 }


 dev_err(sdev->dev, "error: failed to %s HDA controller gctl 0x%x\n",
  reset ? "reset" : "ready", gctl);
 return -EIO;
}
