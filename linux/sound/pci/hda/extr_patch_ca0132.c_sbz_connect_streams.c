
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int SR_96_000 ;
 int chipio_set_conn_rate_no_mutex (struct hda_codec*,int,int ) ;
 int chipio_set_stream_channels (struct hda_codec*,int,int) ;
 int chipio_set_stream_control (struct hda_codec*,int,int) ;
 int chipio_set_stream_source_dest (struct hda_codec*,int,int,int) ;
 int chipio_write_no_mutex (struct hda_codec*,int,int) ;
 int codec_dbg (struct hda_codec*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void sbz_connect_streams(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 mutex_lock(&spec->chipio_mutex);

 codec_dbg(codec, "Connect Streams entered, mutex locked and loaded.\n");

 chipio_set_stream_channels(codec, 0x0C, 6);
 chipio_set_stream_control(codec, 0x0C, 1);


 chipio_write_no_mutex(codec, 0x18a020, 0x00000043);


 chipio_set_stream_source_dest(codec, 0x14, 0x48, 0x91);
 chipio_set_conn_rate_no_mutex(codec, 0x48, SR_96_000);
 chipio_set_conn_rate_no_mutex(codec, 0x91, SR_96_000);
 chipio_set_stream_channels(codec, 0x14, 2);
 chipio_set_stream_control(codec, 0x14, 1);

 codec_dbg(codec, "Connect Streams exited, mutex released.\n");

 mutex_unlock(&spec->chipio_mutex);
}
