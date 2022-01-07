
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int CONTROL_PARAM_ASI ;
 int ca0113_mmio_command_set (struct hda_codec*,int,int,int) ;
 int ca0113_mmio_gpio_set (struct hda_codec*,int,int) ;
 int chipio_set_control_param_no_mutex (struct hda_codec*,int ,int) ;
 int chipio_write_no_mutex (struct hda_codec*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ae5_post_dsp_startup_data(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 mutex_lock(&spec->chipio_mutex);

 chipio_write_no_mutex(codec, 0x189000, 0x0001f101);
 chipio_write_no_mutex(codec, 0x189004, 0x0001f101);
 chipio_write_no_mutex(codec, 0x189024, 0x00014004);
 chipio_write_no_mutex(codec, 0x189028, 0x0002000f);

 ca0113_mmio_command_set(codec, 0x48, 0x0a, 0x05);
 chipio_set_control_param_no_mutex(codec, CONTROL_PARAM_ASI, 7);
 ca0113_mmio_command_set(codec, 0x48, 0x0b, 0x12);
 ca0113_mmio_command_set(codec, 0x48, 0x04, 0x00);
 ca0113_mmio_command_set(codec, 0x48, 0x06, 0x48);
 ca0113_mmio_command_set(codec, 0x48, 0x0a, 0x05);
 ca0113_mmio_command_set(codec, 0x48, 0x07, 0x83);
 ca0113_mmio_command_set(codec, 0x48, 0x0f, 0x00);
 ca0113_mmio_command_set(codec, 0x48, 0x10, 0x00);
 ca0113_mmio_gpio_set(codec, 0, 1);
 ca0113_mmio_gpio_set(codec, 1, 1);
 ca0113_mmio_command_set(codec, 0x48, 0x07, 0x80);

 chipio_write_no_mutex(codec, 0x18b03c, 0x00000012);

 ca0113_mmio_command_set(codec, 0x48, 0x0f, 0x00);
 ca0113_mmio_command_set(codec, 0x48, 0x10, 0x00);

 mutex_unlock(&spec->chipio_mutex);
}
