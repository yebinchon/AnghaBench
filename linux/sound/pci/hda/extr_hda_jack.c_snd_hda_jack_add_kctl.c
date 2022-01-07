
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hda_jack_tbl {int phantom_jack; int type; TYPE_1__* jack; scalar_t__ button_state; } ;
struct hda_jack_keymap {int type; int key; } ;
struct hda_codec {int card; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int private_free; struct hda_jack_tbl* private_data; } ;


 int get_input_jack_type (struct hda_codec*,int ) ;
 int hda_free_jack_priv ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_new (struct hda_codec*,int ) ;
 int snd_jack_new (int ,char const*,int,TYPE_1__**,int,int) ;
 int snd_jack_report (TYPE_1__*,int) ;
 int snd_jack_set_key (TYPE_1__*,int,int ) ;

int snd_hda_jack_add_kctl(struct hda_codec *codec, hda_nid_t nid,
     const char *name, bool phantom_jack,
     int type, const struct hda_jack_keymap *keymap)
{
 struct hda_jack_tbl *jack;
 const struct hda_jack_keymap *map;
 int err, state, buttons;

 jack = snd_hda_jack_tbl_new(codec, nid);
 if (!jack)
  return 0;
 if (jack->jack)
  return 0;

 if (!type)
  type = get_input_jack_type(codec, nid);

 buttons = 0;
 if (keymap) {
  for (map = keymap; map->type; map++)
   buttons |= map->type;
 }

 err = snd_jack_new(codec->card, name, type | buttons,
      &jack->jack, 1, phantom_jack);
 if (err < 0)
  return err;

 jack->phantom_jack = !!phantom_jack;
 jack->type = type;
 jack->button_state = 0;
 jack->jack->private_data = jack;
 jack->jack->private_free = hda_free_jack_priv;
 if (keymap) {
  for (map = keymap; map->type; map++)
   snd_jack_set_key(jack->jack, map->type, map->key);
 }

 state = snd_hda_jack_detect(codec, nid);
 snd_jack_report(jack->jack, state ? jack->type : 0);

 return 0;
}
