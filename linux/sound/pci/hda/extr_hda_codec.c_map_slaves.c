
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmpname ;
struct TYPE_4__ {scalar_t__ iface; int name; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct hda_nid_item {struct snd_kcontrol* kctl; } ;
struct TYPE_3__ {int used; struct hda_nid_item* list; } ;
struct hda_codec {TYPE_1__ mixers; } ;
typedef int (* map_slave_func_t ) (struct hda_codec*,void*,struct snd_kcontrol*) ;


 scalar_t__ SNDRV_CTL_ELEM_IFACE_MIXER ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int map_slaves(struct hda_codec *codec, const char * const *slaves,
        const char *suffix, map_slave_func_t func, void *data)
{
 struct hda_nid_item *items;
 const char * const *s;
 int i, err;

 items = codec->mixers.list;
 for (i = 0; i < codec->mixers.used; i++) {
  struct snd_kcontrol *sctl = items[i].kctl;
  if (!sctl || sctl->id.iface != SNDRV_CTL_ELEM_IFACE_MIXER)
   continue;
  for (s = slaves; *s; s++) {
   char tmpname[sizeof(sctl->id.name)];
   const char *name = *s;
   if (suffix) {
    snprintf(tmpname, sizeof(tmpname), "%s %s",
      name, suffix);
    name = tmpname;
   }
   if (!strcmp(sctl->id.name, name)) {
    err = func(codec, data, sctl);
    if (err)
     return err;
    break;
   }
  }
 }
 return 0;
}
