
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc269_fixup_hp_mute_led_micx (struct hda_codec*,struct hda_fixup const*,int,int) ;

__attribute__((used)) static void alc269_fixup_hp_mute_led_mic3(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 alc269_fixup_hp_mute_led_micx(codec, fix, action, 0x1b);
}
