
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int CONTROL_PARAM_ASI ;
 int SR_96_000 ;
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_PLL_PMU_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int ca0113_mmio_command_set (struct hda_codec*,int,int,int) ;
 int chipio_set_conn_rate_no_mutex (struct hda_codec*,int,int ) ;
 int chipio_set_control_param_no_mutex (struct hda_codec*,int ,int) ;
 int chipio_set_stream_channels (struct hda_codec*,int,int) ;
 int chipio_set_stream_control (struct hda_codec*,int,int) ;
 int chipio_set_stream_source_dest (struct hda_codec*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int,int) ;

__attribute__((used)) static void ae5_post_dsp_stream_setup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 mutex_lock(&spec->chipio_mutex);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0, 0x725, 0x81);

 chipio_set_conn_rate_no_mutex(codec, 0x70, SR_96_000);

 chipio_set_stream_channels(codec, 0x0C, 6);
 chipio_set_stream_control(codec, 0x0C, 1);

 chipio_set_stream_source_dest(codec, 0x5, 0x43, 0x0);

 chipio_set_stream_source_dest(codec, 0x18, 0x9, 0xd0);
 chipio_set_conn_rate_no_mutex(codec, 0xd0, SR_96_000);
 chipio_set_stream_channels(codec, 0x18, 6);
 chipio_set_stream_control(codec, 0x18, 1);

 chipio_set_control_param_no_mutex(codec, CONTROL_PARAM_ASI, 4);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x43);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc7);

 ca0113_mmio_command_set(codec, 0x48, 0x01, 0x80);

 mutex_unlock(&spec->chipio_mutex);
}
