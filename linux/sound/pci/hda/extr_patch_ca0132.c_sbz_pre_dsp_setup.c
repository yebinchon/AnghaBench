
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ mem_base; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int chipio_write (struct hda_codec*,int,int) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sbz_pre_dsp_setup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 writel(0x00820680, spec->mem_base + 0x01C);
 writel(0x00820680, spec->mem_base + 0x01C);

 chipio_write(codec, 0x18b0a4, 0x000000c2);

 snd_hda_codec_write(codec, 0x11, 0,
   AC_VERB_SET_PIN_WIDGET_CONTROL, 0x44);
}
