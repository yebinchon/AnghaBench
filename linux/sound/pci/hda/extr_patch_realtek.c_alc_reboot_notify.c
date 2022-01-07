
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int (* reboot_notify ) (struct hda_codec*) ;} ;


 int alc_shutup (struct hda_codec*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void alc_reboot_notify(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (spec && spec->reboot_notify)
  spec->reboot_notify(codec);
 else
  alc_shutup(codec);
}
