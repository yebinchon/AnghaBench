
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec_per_cvt {int cvt_nid; } ;
struct hda_pcm_stream {int channels_max; int nid; } ;
struct hdmi_spec {struct hda_pcm_stream pcm_playback; TYPE_1__* pcm_rec; } ;
struct hda_pcm {struct hda_pcm_stream* stream; int pcm_type; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct hda_pcm* pcm; } ;


 int ENOMEM ;
 int HDA_PCM_TYPE_HDMI ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int ) ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 unsigned int get_wcaps_channels (unsigned int) ;
 struct hda_pcm* snd_hda_codec_pcm_new (struct hda_codec*,char*) ;

__attribute__((used)) static int simple_playback_build_pcms(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 struct hda_pcm *info;
 unsigned int chans;
 struct hda_pcm_stream *pstr;
 struct hdmi_spec_per_cvt *per_cvt;

 per_cvt = get_cvt(spec, 0);
 chans = get_wcaps(codec, per_cvt->cvt_nid);
 chans = get_wcaps_channels(chans);

 info = snd_hda_codec_pcm_new(codec, "HDMI 0");
 if (!info)
  return -ENOMEM;
 spec->pcm_rec[0].pcm = info;
 info->pcm_type = HDA_PCM_TYPE_HDMI;
 pstr = &info->stream[SNDRV_PCM_STREAM_PLAYBACK];
 *pstr = spec->pcm_playback;
 pstr->nid = per_cvt->cvt_nid;
 if (pstr->channels_max <= 2 && chans && chans <= 16)
  pstr->channels_max = chans;

 return 0;
}
