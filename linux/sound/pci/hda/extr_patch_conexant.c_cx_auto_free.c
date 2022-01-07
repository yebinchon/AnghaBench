
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int cx_auto_reboot_notify (struct hda_codec*) ;
 int snd_hda_gen_free (struct hda_codec*) ;

__attribute__((used)) static void cx_auto_free(struct hda_codec *codec)
{
 cx_auto_reboot_notify(codec);
 snd_hda_gen_free(codec);
}
