
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int * adc_nids; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int HDA_GEN_PCM_ACT_CLEANUP ;
 int call_pcm_capture_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;
 int snd_hda_codec_cleanup_stream (struct hda_codec*,int ) ;

__attribute__((used)) static int alt_capture_pcm_cleanup(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;

 snd_hda_codec_cleanup_stream(codec,
         spec->adc_nids[substream->number + 1]);
 call_pcm_capture_hook(hinfo, codec, substream,
         HDA_GEN_PCM_ACT_CLEANUP);
 return 0;
}
