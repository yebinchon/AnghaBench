
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int add_stereo_mix_input; } ;
struct ad198x_spec {TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_HINT_STEREO_MIX_ENABLE ;
 int ad1986a_fixup_eapd (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void ad1986a_fixup_eapd_mix_in(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct ad198x_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  ad1986a_fixup_eapd(codec, fix, action);
  spec->gen.add_stereo_mix_input = HDA_HINT_STEREO_MIX_ENABLE;
 }
}
