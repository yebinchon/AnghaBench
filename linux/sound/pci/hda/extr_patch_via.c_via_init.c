
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int __analog_low_current_mode (struct hda_codec*,int) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 int vt1708_update_hp_work (struct hda_codec*) ;

__attribute__((used)) static int via_init(struct hda_codec *codec)
{

 __analog_low_current_mode(codec, 1);

 snd_hda_gen_init(codec);

 vt1708_update_hp_work(codec);

 return 0;
}
