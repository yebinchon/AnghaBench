
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_THREE ;
 unsigned int FLOAT_ZERO ;
 int MEM_CONNID_MICIN1 ;
 int MEM_CONNID_MICIN2 ;
 int MEM_CONNID_MICOUT1 ;
 int MEM_CONNID_MICOUT2 ;
 scalar_t__ QUIRK_R3DI ;
 int SR_96_000 ;
 scalar_t__ ca0132_quirk (struct ca0132_spec*) ;
 int chipio_set_conn_rate (struct hda_codec*,int,int ) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;

__attribute__((used)) static void ca0132_alt_init_analog_mics(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;


 chipio_set_conn_rate(codec, MEM_CONNID_MICIN1, SR_96_000);
 chipio_set_conn_rate(codec, MEM_CONNID_MICOUT1, SR_96_000);
 if (ca0132_quirk(spec) == QUIRK_R3DI) {
  chipio_set_conn_rate(codec, 0x0F, SR_96_000);
  tmp = FLOAT_ONE;
 } else
  tmp = FLOAT_THREE;
 dspio_set_uint_param(codec, 0x80, 0x00, tmp);


 chipio_set_conn_rate(codec, MEM_CONNID_MICIN2, SR_96_000);
 chipio_set_conn_rate(codec, MEM_CONNID_MICOUT2, SR_96_000);
 if (ca0132_quirk(spec) == QUIRK_R3DI)
  chipio_set_conn_rate(codec, 0x0F, SR_96_000);
 tmp = FLOAT_ZERO;
 dspio_set_uint_param(codec, 0x80, 0x01, tmp);
}
