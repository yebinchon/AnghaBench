
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_PLL_PMU_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void ae5_post_dsp_pll_setup(struct hda_codec *codec)
{
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x41);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc8);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x45);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xcc);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x40);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xcb);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x43);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc7);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x51);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0x8d);
}
