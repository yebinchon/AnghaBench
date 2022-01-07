
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol* find_mixer_ctl (struct hda_codec*,char const*,int ,int ) ;

struct snd_kcontrol *snd_hda_find_mixer_ctl(struct hda_codec *codec,
         const char *name)
{
 return find_mixer_ctl(codec, name, 0, 0);
}
