
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef enum control_flag_id { ____Placeholder_control_flag_id } control_flag_id ;


 int VENDOR_CHIPIO_FLAG_SET ;
 int WIDGET_CHIP_CTRL ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void chipio_set_control_flag(struct hda_codec *codec,
        enum control_flag_id flag_id,
        bool flag_state)
{
 unsigned int val;
 unsigned int flag_bit;

 flag_bit = (flag_state ? 1 : 0);
 val = (flag_bit << 7) | (flag_id);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_FLAG_SET, val);
}
