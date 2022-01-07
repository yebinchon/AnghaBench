
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int no_depop_delay; } ;


 int alc_auto_setup_eapd (struct hda_codec*,int) ;
 int alc_shutup_pins (struct hda_codec*) ;
 int msleep (int) ;

__attribute__((used)) static void alc_eapd_shutup(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 alc_auto_setup_eapd(codec, 0);
 if (!spec->no_depop_delay)
  msleep(200);
 alc_shutup_pins(codec);
}
