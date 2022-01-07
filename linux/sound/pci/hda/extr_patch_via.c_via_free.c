
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_gen_free (struct hda_codec*) ;
 int vt1708_stop_hp_work (struct hda_codec*) ;

__attribute__((used)) static void via_free(struct hda_codec *codec)
{
 vt1708_stop_hp_work(codec);
 snd_hda_gen_free(codec);
}
