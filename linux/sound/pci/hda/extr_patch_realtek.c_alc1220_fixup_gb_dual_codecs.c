
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {int addr; TYPE_1__* card; } ;
struct TYPE_2__ {int longname; } ;




 int alc_fixup_dual_codecs (struct hda_codec*,struct hda_fixup const*,int) ;
 int rename_ctl (struct hda_codec*,char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void alc1220_fixup_gb_dual_codecs(struct hda_codec *codec,
      const struct hda_fixup *fix,
      int action)
{
 alc_fixup_dual_codecs(codec, fix, action);
 switch (action) {
 case 128:

  strcpy(codec->card->longname, "HDAudio-Gigabyte-ALC1220DualCodecs");
  break;
 case 129:

  rename_ctl(codec, "Capture Volume",
      codec->addr == 0 ?
      "Rear-Panel Capture Volume" :
      "Front-Panel Capture Volume");
  rename_ctl(codec, "Capture Switch",
      codec->addr == 0 ?
      "Rear-Panel Capture Switch" :
      "Front-Panel Capture Switch");
  break;
 }
}
