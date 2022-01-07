
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_verb {int member_0; int member_2; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int chip_name; } ;
struct hda_codec {TYPE_1__ core; } ;


 scalar_t__ AC_JACK_PORT_FIXED ;


 scalar_t__ get_defcfg_connect (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void alc271_fixup_dmic(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 static const struct hda_verb verbs[] = {
  {0x20, 129, 0x0d},
  {0x20, 128, 0x4000},
  {}
 };
 unsigned int cfg;

 if (strcmp(codec->core.chip_name, "ALC271X") &&
     strcmp(codec->core.chip_name, "ALC269VB"))
  return;
 cfg = snd_hda_codec_get_pincfg(codec, 0x12);
 if (get_defcfg_connect(cfg) == AC_JACK_PORT_FIXED)
  snd_hda_sequence_write(codec, verbs);
}
