
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;
struct device {int dummy; } ;


 struct snd_sof_dev* dev_get_drvdata (struct device*) ;
 int snd_sof_dsp_runtime_idle (struct snd_sof_dev*) ;

int snd_sof_runtime_idle(struct device *dev)
{
 struct snd_sof_dev *sdev = dev_get_drvdata(dev);

 return snd_sof_dsp_runtime_idle(sdev);
}
