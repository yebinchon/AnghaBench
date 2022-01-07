
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol* snd_hda_find_mixer_ctl (struct hda_codec*,char const*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void rename_ctl(struct hda_codec *codec, const char *oldname,
         const char *newname)
{
 struct snd_kcontrol *kctl;

 kctl = snd_hda_find_mixer_ctl(codec, oldname);
 if (kctl)
  strcpy(kctl->id.name, newname);
}
