
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int inv_dmic_split; } ;
struct alc_spec {TYPE_1__ gen; } ;



__attribute__((used)) static void alc_fixup_inv_dmic(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 spec->gen.inv_dmic_split = 1;
}
