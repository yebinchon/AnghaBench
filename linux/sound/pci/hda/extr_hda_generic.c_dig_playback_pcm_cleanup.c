
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int multiout; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_multi_out_dig_cleanup (struct hda_codec*,int *) ;

__attribute__((used)) static int dig_playback_pcm_cleanup(struct hda_pcm_stream *hinfo,
        struct hda_codec *codec,
        struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 return snd_hda_multi_out_dig_cleanup(codec, &spec->multiout);
}
