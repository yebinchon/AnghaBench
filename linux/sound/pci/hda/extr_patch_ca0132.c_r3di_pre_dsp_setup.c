
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int VENDOR_CHIPIO_8051_ADDRESS_HIGH ;
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_8051_DATA_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int chipio_write (struct hda_codec*,int,int) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void r3di_pre_dsp_setup(struct hda_codec *codec)
{
 chipio_write(codec, 0x18b0a4, 0x000000c2);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x1E);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x1C);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_DATA_WRITE, 0x5B);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x20);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x19);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_DATA_WRITE, 0x00);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_DATA_WRITE, 0x40);

 snd_hda_codec_write(codec, 0x11, 0,
   AC_VERB_SET_PIN_WIDGET_CONTROL, 0x04);
}
