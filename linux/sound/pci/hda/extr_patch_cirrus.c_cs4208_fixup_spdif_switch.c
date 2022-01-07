
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int put; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_3__ {int * dig_out_pins; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct cs_spec {int spdif_sw_put; TYPE_2__ gen; } ;


 int HDA_FIXUP_ACT_BUILD ;
 int cs4208_spdif_sw_put ;
 struct snd_kcontrol* snd_hda_find_mixer_ctl (struct hda_codec*,char*) ;

__attribute__((used)) static void cs4208_fixup_spdif_switch(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_BUILD) {
  struct cs_spec *spec = codec->spec;
  struct snd_kcontrol *kctl;

  if (!spec->gen.autocfg.dig_out_pins[0])
   return;
  kctl = snd_hda_find_mixer_ctl(codec, "IEC958 Playback Switch");
  if (!kctl)
   return;
  spec->spdif_sw_put = kctl->put;
  kctl->put = cs4208_spdif_sw_put;
 }
}
