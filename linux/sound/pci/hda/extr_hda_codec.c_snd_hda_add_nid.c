
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct hda_nid_item {unsigned int index; scalar_t__ nid; struct snd_kcontrol* kctl; } ;
struct hda_codec {int nids; } ;
typedef scalar_t__ hda_nid_t ;


 int EINVAL ;
 int ENOMEM ;
 int codec_err (struct hda_codec*,char*,int ,int ,unsigned int) ;
 struct hda_nid_item* snd_array_new (int *) ;

int snd_hda_add_nid(struct hda_codec *codec, struct snd_kcontrol *kctl,
      unsigned int index, hda_nid_t nid)
{
 struct hda_nid_item *item;

 if (nid > 0) {
  item = snd_array_new(&codec->nids);
  if (!item)
   return -ENOMEM;
  item->kctl = kctl;
  item->index = index;
  item->nid = nid;
  return 0;
 }
 codec_err(codec, "no NID for mapping control %s:%d:%d\n",
    kctl->id.name, kctl->id.index, index);
 return -EINVAL;
}
