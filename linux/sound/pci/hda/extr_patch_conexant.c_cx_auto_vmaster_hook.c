
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int eapds; int num_eapds; } ;


 int cx_auto_turn_eapd (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static void cx_auto_vmaster_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct conexant_spec *spec = codec->spec;

 cx_auto_turn_eapd(codec, spec->num_eapds, spec->eapds, enabled);
}
