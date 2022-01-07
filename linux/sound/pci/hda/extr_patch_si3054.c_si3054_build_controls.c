
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int si3054_modem_mixer ;
 int snd_hda_add_new_ctls (struct hda_codec*,int ) ;

__attribute__((used)) static int si3054_build_controls(struct hda_codec *codec)
{
 return snd_hda_add_new_ctls(codec, si3054_modem_mixer);
}
