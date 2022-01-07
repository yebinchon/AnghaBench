
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_INIT ;
 int alc_update_coef_idx (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static void alc269_fixup_hweq(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_INIT)
  alc_update_coef_idx(codec, 0x1e, 0, 0x80);
}
