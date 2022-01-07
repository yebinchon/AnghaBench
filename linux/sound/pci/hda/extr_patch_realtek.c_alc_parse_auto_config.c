
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct auto_pin_cfg {int dummy; } ;
struct TYPE_2__ {struct auto_pin_cfg autocfg; } ;
struct alc_spec {int parse_flags; TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int alc_ssid_check (struct hda_codec*,int const*) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,struct auto_pin_cfg*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,struct auto_pin_cfg*,int const*,int ) ;

__attribute__((used)) static int alc_parse_auto_config(struct hda_codec *codec,
     const hda_nid_t *ignore_nids,
     const hda_nid_t *ssid_nids)
{
 struct alc_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;
 int err;

 err = snd_hda_parse_pin_defcfg(codec, cfg, ignore_nids,
           spec->parse_flags);
 if (err < 0)
  return err;

 if (ssid_nids)
  alc_ssid_check(codec, ssid_nids);

 err = snd_hda_gen_parse_auto_config(codec, cfg);
 if (err < 0)
  return err;

 return 1;
}
