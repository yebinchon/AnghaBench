
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int keep_vref_in_automute; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCTL_VREF_50 ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,int const) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,int const,unsigned int) ;

__attribute__((used)) static void alc889_fixup_mac_pins(struct hda_codec *codec,
      const hda_nid_t *nids, int num_nids)
{
 struct alc_spec *spec = codec->spec;
 int i;

 for (i = 0; i < num_nids; i++) {
  unsigned int val;
  val = snd_hda_codec_get_pin_target(codec, nids[i]);
  val |= AC_PINCTL_VREF_50;
  snd_hda_set_pin_ctl(codec, nids[i], val);
 }
 spec->gen.keep_vref_in_automute = 1;
}
