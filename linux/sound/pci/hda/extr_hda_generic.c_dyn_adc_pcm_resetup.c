
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__* adc_nids; size_t* dyn_adc_idx; scalar_t__ cur_adc; int cur_adc_format; int cur_adc_stream_tag; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int __snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__,int) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static bool dyn_adc_pcm_resetup(struct hda_codec *codec, int cur)
{
 struct hda_gen_spec *spec = codec->spec;
 hda_nid_t new_adc = spec->adc_nids[spec->dyn_adc_idx[cur]];

 if (spec->cur_adc && spec->cur_adc != new_adc) {

  __snd_hda_codec_cleanup_stream(codec, spec->cur_adc, 1);
  spec->cur_adc = new_adc;
  snd_hda_codec_setup_stream(codec, new_adc,
        spec->cur_adc_stream_tag, 0,
        spec->cur_adc_format);
  return 1;
 }
 return 0;
}
