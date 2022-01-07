
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int * dacs; int dsp_stream_id; } ;


 int SNDRV_PCM_FORMAT_S32_LE ;
 int snd_hda_codec_cleanup_stream (struct hda_codec*,int ) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,int ,int ,int ,unsigned int) ;
 unsigned int snd_hdac_calc_stream_format (int,int,int ,int,int ) ;

__attribute__((used)) static void ca0132_alt_create_dummy_stream(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int stream_format;

 stream_format = snd_hdac_calc_stream_format(48000, 2,
   SNDRV_PCM_FORMAT_S32_LE, 32, 0);

 snd_hda_codec_setup_stream(codec, spec->dacs[0], spec->dsp_stream_id,
     0, stream_format);

 snd_hda_codec_cleanup_stream(codec, spec->dacs[0]);
}
