
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_update_coef_idx (struct hda_codec*,int,int,int) ;

__attribute__((used)) static void alc269vb_toggle_power_output(struct hda_codec *codec, int power_up)
{
 alc_update_coef_idx(codec, 0x04, 1 << 11, power_up ? (1 << 11) : 0);
}
