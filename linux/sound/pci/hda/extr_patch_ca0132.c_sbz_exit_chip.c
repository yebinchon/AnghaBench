
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_EAPD_BTLENABLE ;
 int SR_192_000 ;
 int ca0132_clear_unsolicited (struct hda_codec*) ;
 int chipio_set_conn_rate (struct hda_codec*,int,int ) ;
 int chipio_set_control_param (struct hda_codec*,int,int) ;
 int chipio_set_stream_control (struct hda_codec*,int,int ) ;
 int chipio_write (struct hda_codec*,int,int) ;
 int sbz_gpio_shutdown_commands (struct hda_codec*,int,int,int) ;
 int sbz_region2_exit (struct hda_codec*) ;
 int sbz_set_pin_ctl_default (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void sbz_exit_chip(struct hda_codec *codec)
{
 chipio_set_stream_control(codec, 0x03, 0);
 chipio_set_stream_control(codec, 0x04, 0);


 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, -1);
 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, 0x05);
 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, 0x01);

 chipio_set_stream_control(codec, 0x14, 0);
 chipio_set_stream_control(codec, 0x0C, 0);

 chipio_set_conn_rate(codec, 0x41, SR_192_000);
 chipio_set_conn_rate(codec, 0x91, SR_192_000);

 chipio_write(codec, 0x18a020, 0x00000083);

 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, 0x03);
 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, 0x07);
 sbz_gpio_shutdown_commands(codec, 0x07, 0x07, 0x06);

 chipio_set_stream_control(codec, 0x0C, 0);

 chipio_set_control_param(codec, 0x0D, 0x24);

 ca0132_clear_unsolicited(codec);
 sbz_set_pin_ctl_default(codec);

 snd_hda_codec_write(codec, 0x0B, 0,
  AC_VERB_SET_EAPD_BTLENABLE, 0x00);

 sbz_region2_exit(codec);
}
