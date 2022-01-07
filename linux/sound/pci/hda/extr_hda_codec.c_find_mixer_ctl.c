
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int device; int index; int name; int iface; } ;
struct hda_codec {int card; } ;
typedef int id ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_kcontrol* snd_ctl_find_id (int ,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct snd_kcontrol *
find_mixer_ctl(struct hda_codec *codec, const char *name, int dev, int idx)
{
 struct snd_ctl_elem_id id;
 memset(&id, 0, sizeof(id));
 id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 id.device = dev;
 id.index = idx;
 if (snd_BUG_ON(strlen(name) >= sizeof(id.name)))
  return ((void*)0);
 strcpy(id.name, name);
 return snd_ctl_find_id(codec->card, &id);
}
