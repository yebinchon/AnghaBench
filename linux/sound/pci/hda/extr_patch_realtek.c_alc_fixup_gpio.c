
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc_setup_gpio (struct hda_codec*,unsigned int) ;

__attribute__((used)) static void alc_fixup_gpio(struct hda_codec *codec, int action,
      unsigned int mask)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  alc_setup_gpio(codec, mask);
}
