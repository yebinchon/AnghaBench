
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigmatel_spec {int num_pwrs; int power_map_bits; scalar_t__* pwr_nids; } ;
struct hda_jack_callback {scalar_t__ nid; } ;
struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_IDT_SET_POWER_MAP ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_jack_detect (struct hda_codec*,scalar_t__) ;
 int snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;
 int stac_toggle_power_map (struct hda_codec*,scalar_t__,int ,int) ;

__attribute__((used)) static void jack_update_power(struct hda_codec *codec,
         struct hda_jack_callback *jack)
{
 struct sigmatel_spec *spec = codec->spec;
 int i;

 if (!spec->num_pwrs)
  return;

 if (jack && jack->nid) {
  stac_toggle_power_map(codec, jack->nid,
          snd_hda_jack_detect(codec, jack->nid),
          1);
  return;
 }


 for (i = 0; i < spec->num_pwrs; i++) {
  hda_nid_t nid = spec->pwr_nids[i];
  if (!snd_hda_jack_tbl_get(codec, nid))
   continue;
  stac_toggle_power_map(codec, nid,
          snd_hda_jack_detect(codec, nid),
          0);
 }

 snd_hda_codec_write(codec, codec->core.afg, 0,
       AC_VERB_IDT_SET_POWER_MAP,
       spec->power_map_bits);
}
