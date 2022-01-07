
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int recording; } ;




 int olpc_xo_update_mic_pins (struct hda_codec*) ;

__attribute__((used)) static void olpc_xo_capture_hook(struct hda_pcm_stream *hinfo,
     struct hda_codec *codec,
     struct snd_pcm_substream *substream,
     int action)
{
 struct conexant_spec *spec = codec->spec;




 switch (action) {
 case 128:
  spec->recording = 1;
  olpc_xo_update_mic_pins(codec);
  break;
 case 129:
  spec->recording = 0;
  olpc_xo_update_mic_pins(codec);
  break;
 }
}
