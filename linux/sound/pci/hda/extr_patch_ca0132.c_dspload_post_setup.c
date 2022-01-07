
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 int XRAM_XRAM_INST_OFFSET (int) ;
 int ca0132_use_alt_functions (struct ca0132_spec*) ;
 int chipio_write (struct hda_codec*,int ,int) ;
 int codec_dbg (struct hda_codec*,char*) ;

__attribute__((used)) static void dspload_post_setup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 codec_dbg(codec, "---- dspload_post_setup ------\n");
 if (!ca0132_use_alt_functions(spec)) {

  chipio_write(codec, XRAM_XRAM_INST_OFFSET(0x18), 0x08080080);
  chipio_write(codec, XRAM_XRAM_INST_OFFSET(0x19), 0x3f800000);


  chipio_write(codec, XRAM_XRAM_INST_OFFSET(0x29), 0x00000002);
 }
}
