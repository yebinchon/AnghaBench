
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {scalar_t__ nid; } ;
struct TYPE_2__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;
typedef scalar_t__ hda_nid_t ;



struct hda_jack_tbl *
snd_hda_jack_tbl_get(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_jack_tbl *jack = codec->jacktbl.list;
 int i;

 if (!nid || !jack)
  return ((void*)0);
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid == nid)
   return jack;
 return ((void*)0);
}
