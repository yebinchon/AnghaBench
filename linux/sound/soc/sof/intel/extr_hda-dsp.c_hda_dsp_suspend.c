
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;
struct hdac_bus {int dev; } ;


 int dev_err (int ,char*) ;
 int hda_suspend (struct snd_sof_dev*,int) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;

int hda_dsp_suspend(struct snd_sof_dev *sdev)
{
 struct hdac_bus *bus = sof_to_bus(sdev);
 int ret;


 ret = hda_suspend(sdev, 0);
 if (ret < 0) {
  dev_err(bus->dev, "error: suspending dsp\n");
  return ret;
 }

 return 0;
}
