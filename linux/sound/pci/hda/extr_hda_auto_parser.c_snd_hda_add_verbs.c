
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int dummy; } ;
struct hda_codec {int verbs; } ;


 int ENOMEM ;
 struct hda_verb** snd_array_new (int *) ;

int snd_hda_add_verbs(struct hda_codec *codec,
        const struct hda_verb *list)
{
 const struct hda_verb **v;
 v = snd_array_new(&codec->verbs);
 if (!v)
  return -ENOMEM;
 *v = list;
 return 0;
}
