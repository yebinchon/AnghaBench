
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct TYPE_4__ {int hp_automute_hook; int automute_hook; int cap_sync_hook; struct auto_pin_cfg autocfg; } ;
struct alc_spec {TYPE_2__ gen; scalar_t__ headphone_mic_pin; scalar_t__ headset_mic_pin; } ;
struct TYPE_3__ {scalar_t__ pin; scalar_t__ is_headphone_mic; scalar_t__ is_headset_mic; } ;


 int WARN_ON (int ) ;
 int alc_update_headset_jack_cb ;
 int alc_update_headset_mode ;
 int alc_update_headset_mode_hook ;

__attribute__((used)) static void alc_probe_headset_mode(struct hda_codec *codec)
{
 int i;
 struct alc_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;


 for (i = 0; i < cfg->num_inputs; i++) {
  if (cfg->inputs[i].is_headset_mic && !spec->headset_mic_pin)
   spec->headset_mic_pin = cfg->inputs[i].pin;
  if (cfg->inputs[i].is_headphone_mic && !spec->headphone_mic_pin)
   spec->headphone_mic_pin = cfg->inputs[i].pin;
 }

 WARN_ON(spec->gen.cap_sync_hook);
 spec->gen.cap_sync_hook = alc_update_headset_mode_hook;
 spec->gen.automute_hook = alc_update_headset_mode;
 spec->gen.hp_automute_hook = alc_update_headset_jack_cb;
}
