
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int num_nids; int dev_num; int pcm_used; TYPE_1__* pcm_rec; } ;
struct hda_pcm_stream {int substreams; int ops; } ;
struct hda_pcm {int own_chmap; struct hda_pcm_stream* stream; int pcm_type; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct hda_pcm* pcm; } ;


 int ENOMEM ;
 int HDA_PCM_TYPE_HDMI ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int generic_ops ;
 struct hda_pcm* snd_hda_codec_pcm_new (struct hda_codec*,char*,int) ;

__attribute__((used)) static int generic_hdmi_build_pcms(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int idx;







 for (idx = 0; idx < spec->num_nids + spec->dev_num - 1; idx++) {
  struct hda_pcm *info;
  struct hda_pcm_stream *pstr;

  info = snd_hda_codec_pcm_new(codec, "HDMI %d", idx);
  if (!info)
   return -ENOMEM;

  spec->pcm_rec[idx].pcm = info;
  spec->pcm_used++;
  info->pcm_type = HDA_PCM_TYPE_HDMI;
  info->own_chmap = 1;

  pstr = &info->stream[SNDRV_PCM_STREAM_PLAYBACK];
  pstr->substreams = 1;
  pstr->ops = generic_ops;

  if (spec->pcm_used >= 16)
   break;

 }

 return 0;
}
