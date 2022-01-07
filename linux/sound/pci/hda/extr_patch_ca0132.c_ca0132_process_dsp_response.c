
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ wait_scp; } ;


 int codec_dbg (struct hda_codec*,char*) ;
 int dspio_clear_response_queue (struct hda_codec*) ;
 scalar_t__ dspio_get_response_data (struct hda_codec*) ;

__attribute__((used)) static void ca0132_process_dsp_response(struct hda_codec *codec,
     struct hda_jack_callback *callback)
{
 struct ca0132_spec *spec = codec->spec;

 codec_dbg(codec, "ca0132_process_dsp_response\n");
 if (spec->wait_scp) {
  if (dspio_get_response_data(codec) >= 0)
   spec->wait_scp = 0;
 }

 dspio_clear_response_queue(codec);
}
