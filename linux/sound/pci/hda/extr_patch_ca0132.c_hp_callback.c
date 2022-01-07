
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int block_report; } ;
struct hda_jack_callback {int nid; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int unsol_hp_work; } ;


 int cancel_delayed_work (int *) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

__attribute__((used)) static void hp_callback(struct hda_codec *codec, struct hda_jack_callback *cb)
{
 struct ca0132_spec *spec = codec->spec;
 struct hda_jack_tbl *tbl;




 cancel_delayed_work(&spec->unsol_hp_work);
 schedule_delayed_work(&spec->unsol_hp_work, msecs_to_jiffies(500));
 tbl = snd_hda_jack_tbl_get(codec, cb->nid);
 if (tbl)
  tbl->block_report = 1;
}
