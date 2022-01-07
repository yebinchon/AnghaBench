
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {int jack_dirty; int tag; int nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;
typedef int hda_nid_t ;


 struct hda_jack_tbl* snd_array_new (TYPE_1__*) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

__attribute__((used)) static struct hda_jack_tbl *
snd_hda_jack_tbl_new(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_jack_tbl *jack = snd_hda_jack_tbl_get(codec, nid);
 if (jack)
  return jack;
 jack = snd_array_new(&codec->jacktbl);
 if (!jack)
  return ((void*)0);
 jack->nid = nid;
 jack->jack_dirty = 1;
 jack->tag = codec->jacktbl.used;
 return jack;
}
