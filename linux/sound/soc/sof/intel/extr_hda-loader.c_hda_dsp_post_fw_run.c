
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int hda_dsp_ctrl_clock_power_gating (struct snd_sof_dev*,int) ;

int hda_dsp_post_fw_run(struct snd_sof_dev *sdev)
{

 return hda_dsp_ctrl_clock_power_gating(sdev, 1);
}
