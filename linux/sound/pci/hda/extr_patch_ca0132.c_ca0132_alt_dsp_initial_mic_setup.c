
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 unsigned int FLOAT_THREE ;
 int MEM_CONNID_MICIN1 ;
 int MEM_CONNID_MICOUT1 ;


 int SR_96_000 ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int chipio_set_conn_rate (struct hda_codec*,int ,int ) ;
 int chipio_set_stream_control (struct hda_codec*,int,int) ;
 int chipio_write (struct hda_codec*,int,int) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;

__attribute__((used)) static void ca0132_alt_dsp_initial_mic_setup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;

 chipio_set_stream_control(codec, 0x03, 0);
 chipio_set_stream_control(codec, 0x04, 0);

 chipio_set_conn_rate(codec, MEM_CONNID_MICIN1, SR_96_000);
 chipio_set_conn_rate(codec, MEM_CONNID_MICOUT1, SR_96_000);

 tmp = FLOAT_THREE;
 dspio_set_uint_param(codec, 0x80, 0x00, tmp);

 chipio_set_stream_control(codec, 0x03, 1);
 chipio_set_stream_control(codec, 0x04, 1);

 switch (ca0132_quirk(spec)) {
 case 128:
  chipio_write(codec, 0x18b098, 0x0000000c);
  chipio_write(codec, 0x18b09C, 0x0000000c);
  break;
 case 129:
  chipio_write(codec, 0x18b098, 0x0000000c);
  chipio_write(codec, 0x18b09c, 0x0000004c);
  break;
 default:
  break;
 }
}
