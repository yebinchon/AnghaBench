
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 scalar_t__ QUIRK_SBZ ;
 scalar_t__ QUIRK_ZXR ;
 scalar_t__ ca0132_quirk (struct ca0132_spec*) ;
 int chipio_set_stream_channels (struct hda_codec*,int,int) ;
 int chipio_set_stream_control (struct hda_codec*,int,int) ;
 int chipio_write_no_mutex (struct hda_codec*,int,int) ;
 int codec_dbg (struct hda_codec*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void sbz_chipio_startup_data(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 mutex_lock(&spec->chipio_mutex);
 codec_dbg(codec, "Startup Data entered, mutex locked and loaded.\n");


 chipio_write_no_mutex(codec, 0x190060, 0x0001f8c0);
 chipio_write_no_mutex(codec, 0x190064, 0x0001f9c1);
 chipio_write_no_mutex(codec, 0x190068, 0x0001fac6);
 chipio_write_no_mutex(codec, 0x19006c, 0x0001fbc7);

 chipio_write_no_mutex(codec, 0x19042c, 0x00000001);

 chipio_set_stream_channels(codec, 0x0C, 6);
 chipio_set_stream_control(codec, 0x0C, 1);

 if (ca0132_quirk(spec) == QUIRK_SBZ) {
  chipio_write_no_mutex(codec, 0x190030, 0x0001e0c0);
  chipio_write_no_mutex(codec, 0x190034, 0x0001e1c1);
  chipio_write_no_mutex(codec, 0x190038, 0x0001e4c2);
  chipio_write_no_mutex(codec, 0x19003c, 0x0001e5c3);
  chipio_write_no_mutex(codec, 0x190040, 0x0001e2c4);
  chipio_write_no_mutex(codec, 0x190044, 0x0001e3c5);
  chipio_write_no_mutex(codec, 0x190048, 0x0001e8c6);
  chipio_write_no_mutex(codec, 0x19004c, 0x0001e9c7);
  chipio_write_no_mutex(codec, 0x190050, 0x0001ecc8);
  chipio_write_no_mutex(codec, 0x190054, 0x0001edc9);
  chipio_write_no_mutex(codec, 0x190058, 0x0001eaca);
  chipio_write_no_mutex(codec, 0x19005c, 0x0001ebcb);
 } else if (ca0132_quirk(spec) == QUIRK_ZXR) {
  chipio_write_no_mutex(codec, 0x190038, 0x000140c2);
  chipio_write_no_mutex(codec, 0x19003c, 0x000141c3);
  chipio_write_no_mutex(codec, 0x190040, 0x000150c4);
  chipio_write_no_mutex(codec, 0x190044, 0x000151c5);
  chipio_write_no_mutex(codec, 0x190050, 0x000142c8);
  chipio_write_no_mutex(codec, 0x190054, 0x000143c9);
  chipio_write_no_mutex(codec, 0x190058, 0x000152ca);
  chipio_write_no_mutex(codec, 0x19005c, 0x000153cb);
 }
 chipio_write_no_mutex(codec, 0x19042c, 0x00000001);

 codec_dbg(codec, "Startup Data exited, mutex released.\n");
 mutex_unlock(&spec->chipio_mutex);
}
