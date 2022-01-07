
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;
struct hdac_bus {int codec_mask; int dev; } ;


 int HDA_MAX_CODECS ;
 int dev_err (int ,char*,int,int) ;
 int hda_codec_probe (struct snd_sof_dev*,int) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;

int hda_codec_probe_bus(struct snd_sof_dev *sdev)
{
 struct hdac_bus *bus = sof_to_bus(sdev);
 int i, ret;


 for (i = 0; i < HDA_MAX_CODECS; i++) {

  if (!(bus->codec_mask & (1 << i)))
   continue;

  ret = hda_codec_probe(sdev, i);
  if (ret < 0) {
   dev_err(bus->dev, "error: codec #%d probe error, ret: %d\n",
    i, ret);
   return ret;
  }
 }

 return 0;
}
