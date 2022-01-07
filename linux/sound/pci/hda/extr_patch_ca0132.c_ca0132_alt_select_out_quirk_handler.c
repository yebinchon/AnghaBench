
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int cur_out_type; int ae5_headphone_gain_val; int zxr_gain_set; } ;


 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_ZERO ;






 int R3DI_HEADPHONE_OUT ;
 int R3DI_LINE_OUT ;


 int ae5_headphone_gain_set (struct hda_codec*,int) ;
 int ae5_mmio_select_out (struct hda_codec*) ;
 int ca0113_mmio_gpio_set (struct hda_codec*,int,int) ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int chipio_set_control_param (struct hda_codec*,int,int) ;
 int chipio_write (struct hda_codec*,int,int) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;
 int r3di_gpio_out_set (struct hda_codec*,int ) ;
 int zxr_headphone_gain_set (struct hda_codec*,int ) ;

__attribute__((used)) static void ca0132_alt_select_out_quirk_handler(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;

 switch (spec->cur_out_type) {
 case 129:
  switch (ca0132_quirk(spec)) {
  case 131:
   ca0113_mmio_gpio_set(codec, 7, 0);
   ca0113_mmio_gpio_set(codec, 4, 1);
   ca0113_mmio_gpio_set(codec, 1, 1);
   chipio_set_control_param(codec, 0x0d, 0x18);
   break;
  case 130:
   ca0113_mmio_gpio_set(codec, 2, 1);
   ca0113_mmio_gpio_set(codec, 3, 1);
   ca0113_mmio_gpio_set(codec, 5, 0);
   zxr_headphone_gain_set(codec, 0);
   chipio_set_control_param(codec, 0x0d, 0x24);
   break;
  case 132:
   chipio_set_control_param(codec, 0x0d, 0x24);
   r3di_gpio_out_set(codec, R3DI_LINE_OUT);
   break;
  case 133:
   chipio_set_control_param(codec, 0x0d, 0x24);
   ca0113_mmio_gpio_set(codec, 1, 1);
   break;
  case 134:
   ae5_mmio_select_out(codec);
   ae5_headphone_gain_set(codec, 2);
   tmp = FLOAT_ZERO;
   dspio_set_uint_param(codec, 0x96, 0x29, tmp);
   dspio_set_uint_param(codec, 0x96, 0x2a, tmp);
   chipio_set_control_param(codec, 0x0d, 0xa4);
   chipio_write(codec, 0x18b03c, 0x00000012);
   break;
  default:
   break;
  }
  break;
 case 135:
  switch (ca0132_quirk(spec)) {
  case 131:
   ca0113_mmio_gpio_set(codec, 7, 1);
   ca0113_mmio_gpio_set(codec, 4, 1);
   ca0113_mmio_gpio_set(codec, 1, 0);
   chipio_set_control_param(codec, 0x0d, 0x12);
   break;
  case 130:
   ca0113_mmio_gpio_set(codec, 2, 0);
   ca0113_mmio_gpio_set(codec, 3, 0);
   ca0113_mmio_gpio_set(codec, 5, 1);
   zxr_headphone_gain_set(codec, spec->zxr_gain_set);
   chipio_set_control_param(codec, 0x0d, 0x21);
   break;
  case 132:
   chipio_set_control_param(codec, 0x0d, 0x21);
   r3di_gpio_out_set(codec, R3DI_HEADPHONE_OUT);
   break;
  case 133:
   chipio_set_control_param(codec, 0x0d, 0x21);
   ca0113_mmio_gpio_set(codec, 0x1, 0);
   break;
  case 134:
   ae5_mmio_select_out(codec);
   ae5_headphone_gain_set(codec,
     spec->ae5_headphone_gain_val);
   tmp = FLOAT_ONE;
   dspio_set_uint_param(codec, 0x96, 0x29, tmp);
   dspio_set_uint_param(codec, 0x96, 0x2a, tmp);
   chipio_set_control_param(codec, 0x0d, 0xa1);
   chipio_write(codec, 0x18b03c, 0x00000012);
   break;
  default:
   break;
  }
  break;
 case 128:
  switch (ca0132_quirk(spec)) {
  case 131:
   ca0113_mmio_gpio_set(codec, 7, 0);
   ca0113_mmio_gpio_set(codec, 4, 1);
   ca0113_mmio_gpio_set(codec, 1, 1);
   chipio_set_control_param(codec, 0x0d, 0x18);
   break;
  case 130:
   ca0113_mmio_gpio_set(codec, 2, 1);
   ca0113_mmio_gpio_set(codec, 3, 1);
   ca0113_mmio_gpio_set(codec, 5, 0);
   zxr_headphone_gain_set(codec, 0);
   chipio_set_control_param(codec, 0x0d, 0x24);
   break;
  case 132:
   chipio_set_control_param(codec, 0x0d, 0x24);
   r3di_gpio_out_set(codec, R3DI_LINE_OUT);
   break;
  case 133:
   ca0113_mmio_gpio_set(codec, 1, 1);
   chipio_set_control_param(codec, 0x0d, 0x24);
   break;
  case 134:
   ae5_mmio_select_out(codec);
   ae5_headphone_gain_set(codec, 2);
   tmp = FLOAT_ZERO;
   dspio_set_uint_param(codec, 0x96, 0x29, tmp);
   dspio_set_uint_param(codec, 0x96, 0x2a, tmp);
   chipio_set_control_param(codec, 0x0d, 0xa4);
   chipio_write(codec, 0x18b03c, 0x00000012);
   break;
  default:
   break;
  }
  break;
 }
}
