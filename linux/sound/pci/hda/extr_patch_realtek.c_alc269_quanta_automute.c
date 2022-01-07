
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;

__attribute__((used)) static void alc269_quanta_automute(struct hda_codec *codec)
{
 snd_hda_gen_update_outputs(codec);

 alc_write_coef_idx(codec, 0x0c, 0x680);
 alc_write_coef_idx(codec, 0x0c, 0x480);
}
