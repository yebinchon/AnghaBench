
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ mem_base; } ;


 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_PLL_PMU_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int ca0113_mmio_command_set (struct hda_codec*,int,int,int) ;
 int chipio_8051_write_direct (struct hda_codec*,int,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ae5_post_dsp_register_set(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 chipio_8051_write_direct(codec, 0x93, 0x10);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x44);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc2);

 writeb(0xff, spec->mem_base + 0x304);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0x00, spec->mem_base + 0x100);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0x00, spec->mem_base + 0x100);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0x00, spec->mem_base + 0x100);
 writeb(0xff, spec->mem_base + 0x304);
 writeb(0x00, spec->mem_base + 0x100);
 writeb(0xff, spec->mem_base + 0x304);

 ca0113_mmio_command_set(codec, 0x30, 0x2b, 0x3f);
 ca0113_mmio_command_set(codec, 0x30, 0x2d, 0x3f);
 ca0113_mmio_command_set(codec, 0x48, 0x07, 0x83);
}
