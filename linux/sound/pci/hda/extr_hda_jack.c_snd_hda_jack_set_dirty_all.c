
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {int jack_dirty; scalar_t__ nid; } ;
struct TYPE_2__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;



void snd_hda_jack_set_dirty_all(struct hda_codec *codec)
{
 struct hda_jack_tbl *jack = codec->jacktbl.list;
 int i;

 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid)
   jack->jack_dirty = 1;
}
