
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc_fixup_no_shutup (struct hda_codec*,struct hda_fixup const*,int) ;
 int hda_fixup_thinkpad_acpi (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void alc_fixup_thinkpad_acpi(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 alc_fixup_no_shutup(codec, fix, action);
 hda_fixup_thinkpad_acpi(codec, fix, action);
}
