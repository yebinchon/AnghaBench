
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int hda_suspend (struct snd_sof_dev*,int) ;

int hda_dsp_runtime_suspend(struct snd_sof_dev *sdev)
{

 return hda_suspend(sdev, 1);
}
