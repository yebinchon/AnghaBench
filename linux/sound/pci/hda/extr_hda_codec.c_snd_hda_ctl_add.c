
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subdevice; } ;
struct snd_kcontrol {TYPE_1__ id; int private_value; } ;
struct hda_nid_item {int nid; unsigned short flags; struct snd_kcontrol* kctl; } ;
struct hda_codec {int mixers; int card; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 unsigned short HDA_NID_ITEM_AMP ;
 int HDA_SUBDEV_AMP_FLAG ;
 int HDA_SUBDEV_NID_FLAG ;
 int get_amp_nid_ (int ) ;
 struct hda_nid_item* snd_array_new (int *) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;

int snd_hda_ctl_add(struct hda_codec *codec, hda_nid_t nid,
      struct snd_kcontrol *kctl)
{
 int err;
 unsigned short flags = 0;
 struct hda_nid_item *item;

 if (kctl->id.subdevice & HDA_SUBDEV_AMP_FLAG) {
  flags |= HDA_NID_ITEM_AMP;
  if (nid == 0)
   nid = get_amp_nid_(kctl->private_value);
 }
 if ((kctl->id.subdevice & HDA_SUBDEV_NID_FLAG) != 0 && nid == 0)
  nid = kctl->id.subdevice & 0xffff;
 if (kctl->id.subdevice & (HDA_SUBDEV_NID_FLAG|HDA_SUBDEV_AMP_FLAG))
  kctl->id.subdevice = 0;
 err = snd_ctl_add(codec->card, kctl);
 if (err < 0)
  return err;
 item = snd_array_new(&codec->mixers);
 if (!item)
  return -ENOMEM;
 item->kctl = kctl;
 item->nid = nid;
 item->flags = flags;
 return 0;
}
