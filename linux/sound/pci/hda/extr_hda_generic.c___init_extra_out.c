
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int set_output_and_unmute (struct hda_codec*,int) ;

__attribute__((used)) static void __init_extra_out(struct hda_codec *codec, int num_outs, int *paths)
{
 int i;

 for (i = 0; i < num_outs; i++)
  set_output_and_unmute(codec, paths[i]);
}
