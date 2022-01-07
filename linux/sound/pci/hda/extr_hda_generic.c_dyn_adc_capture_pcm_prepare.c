
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {size_t* dyn_adc_idx; size_t* cur_mux; unsigned int cur_adc_stream_tag; unsigned int cur_adc_format; int cur_adc; int * adc_nids; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int HDA_GEN_PCM_ACT_PREPARE ;
 int call_pcm_capture_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int dyn_adc_capture_pcm_prepare(struct hda_pcm_stream *hinfo,
           struct hda_codec *codec,
           unsigned int stream_tag,
           unsigned int format,
           struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 spec->cur_adc = spec->adc_nids[spec->dyn_adc_idx[spec->cur_mux[0]]];
 spec->cur_adc_stream_tag = stream_tag;
 spec->cur_adc_format = format;
 snd_hda_codec_setup_stream(codec, spec->cur_adc, stream_tag, 0, format);
 call_pcm_capture_hook(hinfo, codec, substream, HDA_GEN_PCM_ACT_PREPARE);
 return 0;
}
