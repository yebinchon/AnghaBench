
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int nvhdmi_basic_init_7x_2ch ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static int nvhdmi_7x_init_2ch(struct hda_codec *codec)
{
 snd_hda_sequence_write(codec, nvhdmi_basic_init_7x_2ch);
 return 0;
}
