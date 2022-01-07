
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int multiout; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int HDA_GEN_PCM_ACT_PREPARE ;
 int call_pcm_playback_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;
 int snd_hda_multi_out_analog_prepare (struct hda_codec*,int *,unsigned int,unsigned int,struct snd_pcm_substream*) ;

__attribute__((used)) static int playback_pcm_prepare(struct hda_pcm_stream *hinfo,
    struct hda_codec *codec,
    unsigned int stream_tag,
    unsigned int format,
    struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 int err;

 err = snd_hda_multi_out_analog_prepare(codec, &spec->multiout,
            stream_tag, format, substream);
 if (!err)
  call_pcm_playback_hook(hinfo, codec, substream,
           HDA_GEN_PCM_ACT_PREPARE);
 return err;
}
