
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_get_coef0 (struct hda_codec*) ;
 int alc_update_coef_idx (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static void alc888_coef_init(struct hda_codec *codec)
{
 switch (alc_get_coef0(codec) & 0x00f0) {

 case 0x00:

 case 0x10:
  alc_update_coef_idx(codec, 7, 0, 0x2030);
  break;
 }
}
