
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_FLAG_ASI_96KHZ ;
 int CONTROL_PARAM_ASI ;
 int VENDOR_CHIPIO_8051_ADDRESS_HIGH ;
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_8051_DATA_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int chipio_set_control_flag (struct hda_codec*,int ,int) ;
 int chipio_set_control_param (struct hda_codec*,int,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int,int) ;

__attribute__((used)) static void ae5_post_dsp_param_setup(struct hda_codec *codec)
{





 chipio_set_control_param(codec, 3, 0);




 chipio_set_control_flag(codec, CONTROL_FLAG_ASI_96KHZ, 1);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0, 0x724, 0x83);
 chipio_set_control_param(codec, CONTROL_PARAM_ASI, 0);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x92);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0xfa);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_DATA_WRITE, 0x22);
}
