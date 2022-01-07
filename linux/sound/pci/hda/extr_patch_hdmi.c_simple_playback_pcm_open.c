
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct snd_pcm_hw_constraint_list {int dummy; } ;
struct hdmi_spec {int multiout; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {TYPE_1__* preset; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int vendor_id; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_pcm_hw_constraint_list hw_constraints_2_6_8_channels ;
 struct snd_pcm_hw_constraint_list hw_constraints_2_8_channels ;
 int snd_hda_multi_out_dig_open (struct hda_codec*,int *) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,struct snd_pcm_hw_constraint_list const*) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int) ;

__attribute__((used)) static int simple_playback_pcm_open(struct hda_pcm_stream *hinfo,
        struct hda_codec *codec,
        struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 const struct snd_pcm_hw_constraint_list *hw_constraints_channels = ((void*)0);

 switch (codec->preset->vendor_id) {
 case 0x10de0002:
 case 0x10de0003:
 case 0x10de0005:
 case 0x10de0006:
  hw_constraints_channels = &hw_constraints_2_8_channels;
  break;
 case 0x10de0007:
  hw_constraints_channels = &hw_constraints_2_6_8_channels;
  break;
 default:
  break;
 }

 if (hw_constraints_channels != ((void*)0)) {
  snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_CHANNELS,
    hw_constraints_channels);
 } else {
  snd_pcm_hw_constraint_step(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 }

 return snd_hda_multi_out_dig_open(codec, &spec->multiout);
}
