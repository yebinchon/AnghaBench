
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int formats; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hdmi_spec_per_cvt {int assigned; int maxbps; int formats; int rates; int channels_max; int channels_min; int cvt_nid; } ;
struct hdmi_spec {int pcm_in_use; } ;
struct hda_pcm_stream {int rates; int formats; int channels_max; int channels_min; int maxbps; int nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 int hdmi_choose_cvt (struct hda_codec*,int,int*) ;
 int hinfo_to_pcm_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int pin_cvt_fixup (struct hda_codec*,int *,int ) ;
 int set_bit (int,int *) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;

__attribute__((used)) static int hdmi_pcm_open_no_pin(struct hda_pcm_stream *hinfo,
    struct hda_codec *codec,
    struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int cvt_idx, pcm_idx;
 struct hdmi_spec_per_cvt *per_cvt = ((void*)0);
 int err;

 pcm_idx = hinfo_to_pcm_index(codec, hinfo);
 if (pcm_idx < 0)
  return -EINVAL;

 err = hdmi_choose_cvt(codec, -1, &cvt_idx);
 if (err)
  return err;

 per_cvt = get_cvt(spec, cvt_idx);
 per_cvt->assigned = 1;
 hinfo->nid = per_cvt->cvt_nid;

 pin_cvt_fixup(codec, ((void*)0), per_cvt->cvt_nid);

 set_bit(pcm_idx, &spec->pcm_in_use);



 hinfo->channels_min = per_cvt->channels_min;
 hinfo->channels_max = per_cvt->channels_max;
 hinfo->rates = per_cvt->rates;
 hinfo->formats = per_cvt->formats;
 hinfo->maxbps = per_cvt->maxbps;


 runtime->hw.channels_min = hinfo->channels_min;
 runtime->hw.channels_max = hinfo->channels_max;
 runtime->hw.formats = hinfo->formats;
 runtime->hw.rates = hinfo->rates;

 snd_pcm_hw_constraint_step(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 return 0;
}
