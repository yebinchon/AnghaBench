
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hda_pcm {TYPE_1__* stream; int pcm_type; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dig_in; scalar_t__ dig_out; scalar_t__* adcs; } ;
struct TYPE_4__ {int substreams; scalar_t__ nid; } ;


 int ENOMEM ;
 int HDA_PCM_TYPE_SPDIF ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_1__ ca0132_pcm_analog_capture ;
 TYPE_1__ ca0132_pcm_digital_capture ;
 TYPE_1__ ca0132_pcm_digital_playback ;
 struct hda_pcm* snd_hda_codec_pcm_new (struct hda_codec*,char*) ;

__attribute__((used)) static int dbpro_build_pcms(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 struct hda_pcm *info;

 info = snd_hda_codec_pcm_new(codec, "CA0132 Alt Analog");
 if (!info)
  return -ENOMEM;
 info->stream[SNDRV_PCM_STREAM_CAPTURE] = ca0132_pcm_analog_capture;
 info->stream[SNDRV_PCM_STREAM_CAPTURE].substreams = 1;
 info->stream[SNDRV_PCM_STREAM_CAPTURE].nid = spec->adcs[0];


 if (!spec->dig_out && !spec->dig_in)
  return 0;

 info = snd_hda_codec_pcm_new(codec, "CA0132 Digital");
 if (!info)
  return -ENOMEM;
 info->pcm_type = HDA_PCM_TYPE_SPDIF;
 if (spec->dig_out) {
  info->stream[SNDRV_PCM_STREAM_PLAYBACK] =
   ca0132_pcm_digital_playback;
  info->stream[SNDRV_PCM_STREAM_PLAYBACK].nid = spec->dig_out;
 }
 if (spec->dig_in) {
  info->stream[SNDRV_PCM_STREAM_CAPTURE] =
   ca0132_pcm_digital_capture;
  info->stream[SNDRV_PCM_STREAM_CAPTURE].nid = spec->dig_in;
 }

 return 0;
}
