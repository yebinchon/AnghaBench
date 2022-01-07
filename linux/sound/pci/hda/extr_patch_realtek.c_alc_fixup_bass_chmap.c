
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_6__ {TYPE_2__** pcm_rec; } ;
struct alc_spec {TYPE_3__ gen; } ;
struct TYPE_5__ {TYPE_1__* stream; } ;
struct TYPE_4__ {int chmap; } ;


 int HDA_FIXUP_ACT_BUILD ;
 int asus_pcm_2_1_chmaps ;

__attribute__((used)) static void alc_fixup_bass_chmap(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_BUILD) {
  struct alc_spec *spec = codec->spec;
  spec->gen.pcm_rec[0]->stream[0].chmap = asus_pcm_2_1_chmaps;
 }
}
