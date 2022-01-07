
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int groups; } ;
struct TYPE_3__ {int ioctl_compat; int ioctl; int open; } ;
struct snd_hwdep {char* name; int exclusive; TYPE_2__ dev; TYPE_1__ ops; struct hda_codec* private_data; int iface; } ;
struct hda_codec {int addr; struct snd_hwdep* hwdep; int card; } ;


 int SNDRV_HWDEP_IFACE_HDA ;
 int dev_set_drvdata (TYPE_2__*,struct hda_codec*) ;
 int hda_hwdep_ioctl ;
 int hda_hwdep_ioctl_compat ;
 int hda_hwdep_open ;
 int snd_hda_dev_attr_groups ;
 int snd_hwdep_new (int ,char*,int,struct snd_hwdep**) ;
 int sprintf (char*,char*,int) ;

int snd_hda_create_hwdep(struct hda_codec *codec)
{
 char hwname[16];
 struct snd_hwdep *hwdep;
 int err;

 sprintf(hwname, "HDA Codec %d", codec->addr);
 err = snd_hwdep_new(codec->card, hwname, codec->addr, &hwdep);
 if (err < 0)
  return err;
 codec->hwdep = hwdep;
 sprintf(hwdep->name, "HDA Codec %d", codec->addr);
 hwdep->iface = SNDRV_HWDEP_IFACE_HDA;
 hwdep->private_data = codec;
 hwdep->exclusive = 1;

 hwdep->ops.open = hda_hwdep_open;
 hwdep->ops.ioctl = hda_hwdep_ioctl;





 hwdep->dev.groups = snd_hda_dev_attr_groups;
 dev_set_drvdata(&hwdep->dev, codec);

 return 0;
}
