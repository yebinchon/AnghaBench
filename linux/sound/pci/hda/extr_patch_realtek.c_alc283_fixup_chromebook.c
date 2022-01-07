
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int mixer_nid; } ;
struct alc_spec {TYPE_1__ gen; } ;




 int alc_update_coef_idx (struct hda_codec*,int,int,int) ;
 int snd_hda_override_wcaps (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc283_fixup_chromebook(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 switch (action) {
 case 128:
  snd_hda_override_wcaps(codec, 0x03, 0);

  spec->gen.mixer_nid = 0;
  break;
 case 129:


  alc_update_coef_idx(codec, 0x06, 0x000c, 0);

  alc_update_coef_idx(codec, 0x1a, 0, 1 << 4);
  break;
 }
}
