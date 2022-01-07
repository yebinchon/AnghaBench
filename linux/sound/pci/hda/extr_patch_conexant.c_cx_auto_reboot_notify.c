
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int eapds; int num_eapds; } ;


 int cx_auto_turn_eapd (struct hda_codec*,int ,int ,int) ;
 int snd_hda_gen_reboot_notify (struct hda_codec*) ;

__attribute__((used)) static void cx_auto_reboot_notify(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;



 cx_auto_turn_eapd(codec, spec->num_eapds, spec->eapds, 0);
 snd_hda_gen_reboot_notify(codec);
}
