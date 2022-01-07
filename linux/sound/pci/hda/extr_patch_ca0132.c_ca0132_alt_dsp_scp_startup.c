
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;






 int ca0132_quirk (struct ca0132_spec*) ;
 int dspio_set_uint_param_no_source (struct hda_codec*,int,int,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static void ca0132_alt_dsp_scp_startup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp, i;





 for (i = 0; i < 2; i++) {
  switch (ca0132_quirk(spec)) {
  case 128:
  case 131:
   tmp = 0x00000003;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   tmp = 0x00000000;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0A, tmp);
   tmp = 0x00000001;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0B, tmp);
   tmp = 0x00000004;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   tmp = 0x00000005;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   tmp = 0x00000000;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   break;
  case 130:
  case 129:
   tmp = 0x00000000;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0A, tmp);
   tmp = 0x00000001;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0B, tmp);
   tmp = 0x00000004;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   tmp = 0x00000005;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   tmp = 0x00000000;
   dspio_set_uint_param_no_source(codec, 0x80, 0x0C, tmp);
   break;
  default:
   break;
  }
  msleep(100);
 }
}
