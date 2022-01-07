
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__ add_jack_modes; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCAP_HP_DRV ;
 unsigned int AC_PINCAP_OUT ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static int get_out_jack_num_items(struct hda_codec *codec, hda_nid_t pin)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->add_jack_modes) {
  unsigned int pincap = snd_hda_query_pin_caps(codec, pin);
  if ((pincap & AC_PINCAP_OUT) && (pincap & AC_PINCAP_HP_DRV))
   return 2;
 }
 return 1;
}
