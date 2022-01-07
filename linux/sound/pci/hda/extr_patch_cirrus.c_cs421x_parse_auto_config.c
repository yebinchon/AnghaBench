
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_4__ {scalar_t__ speaker_outs; } ;
struct TYPE_5__ {TYPE_1__ autocfg; } ;
struct cs_spec {scalar_t__ vendor_nid; TYPE_3__ gen; } ;
typedef int hda_nid_t ;


 int CS4210_DAC_NID ;
 scalar_t__ CS4210_VENDOR_NID ;
 int ENOMEM ;
 int cs421x_speaker_boost_ctl ;
 int fix_volume_caps (struct hda_codec*,int ) ;
 int parse_cs421x_digital (struct hda_codec*) ;
 int snd_hda_gen_add_kctl (TYPE_3__*,int *,int *) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,TYPE_1__*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int cs421x_parse_auto_config(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 hda_nid_t dac = CS4210_DAC_NID;
 int err;

 fix_volume_caps(codec, dac);

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), 0);
 if (err < 0)
  return err;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;

 parse_cs421x_digital(codec);

 if (spec->gen.autocfg.speaker_outs &&
     spec->vendor_nid == CS4210_VENDOR_NID) {
  if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0),
       &cs421x_speaker_boost_ctl))
   return -ENOMEM;
 }

 return 0;
}
