
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int fixup_id; scalar_t__ fixup_list; } ;


 int apply_fixup (struct hda_codec*,int ,int,int ) ;

void snd_hda_apply_fixup(struct hda_codec *codec, int action)
{
 if (codec->fixup_list)
  apply_fixup(codec, codec->fixup_id, action, 0);
}
