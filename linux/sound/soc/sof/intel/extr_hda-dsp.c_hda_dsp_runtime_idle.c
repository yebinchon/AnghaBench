
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;
struct hdac_bus {scalar_t__ codec_powered; } ;


 int EBUSY ;
 int dev_dbg (int ,char*,unsigned int) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;

int hda_dsp_runtime_idle(struct snd_sof_dev *sdev)
{
 struct hdac_bus *hbus = sof_to_bus(sdev);

 if (hbus->codec_powered) {
  dev_dbg(sdev->dev, "some codecs still powered (%08X), not idle\n",
   (unsigned int)hbus->codec_powered);
  return -EBUSY;
 }

 return 0;
}
