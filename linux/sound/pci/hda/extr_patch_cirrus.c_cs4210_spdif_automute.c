
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_3__ {int * dig_out_pins; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct cs_spec {scalar_t__ vendor_nid; int spdif_present; int spdif_detect; TYPE_2__ gen; } ;
typedef int hda_nid_t ;


 scalar_t__ CS4210_VENDOR_NID ;
 int PIN_OUT ;
 int cs_automute (struct hda_codec*) ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void cs4210_spdif_automute(struct hda_codec *codec,
      struct hda_jack_callback *tbl)
{
 struct cs_spec *spec = codec->spec;
 bool spdif_present = 0;
 hda_nid_t spdif_pin = spec->gen.autocfg.dig_out_pins[0];


 if (!spec->spdif_detect ||
     spec->vendor_nid != CS4210_VENDOR_NID)
  return;

 spdif_present = snd_hda_jack_detect(codec, spdif_pin);
 if (spdif_present == spec->spdif_present)
  return;

 spec->spdif_present = spdif_present;

 snd_hda_set_pin_ctl(codec, spdif_pin, spdif_present ? PIN_OUT : 0);

 cs_automute(codec);
}
