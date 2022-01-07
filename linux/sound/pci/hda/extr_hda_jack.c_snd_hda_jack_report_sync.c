
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {int button_state; int type; int jack; int pin_sense; scalar_t__ block_report; scalar_t__ nid; } ;
struct TYPE_2__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;


 scalar_t__ get_jack_plug_state (int ) ;
 int jack_detect_update (struct hda_codec*,struct hda_jack_tbl*) ;
 int snd_jack_report (int ,int) ;

void snd_hda_jack_report_sync(struct hda_codec *codec)
{
 struct hda_jack_tbl *jack;
 int i, state;


 jack = codec->jacktbl.list;
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid)
   jack_detect_update(codec, jack);




 jack = codec->jacktbl.list;
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid) {
   if (!jack->jack || jack->block_report)
    continue;
   state = jack->button_state;
   if (get_jack_plug_state(jack->pin_sense))
    state |= jack->type;
   snd_jack_report(jack->jack, state);
   if (jack->button_state) {
    snd_jack_report(jack->jack,
      state & ~jack->button_state);
    jack->button_state = 0;
   }
  }
}
