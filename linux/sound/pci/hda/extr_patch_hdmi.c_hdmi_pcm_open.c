
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int formats; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hdmi_eld {int info; scalar_t__ eld_valid; } ;
struct hdmi_spec_per_pin {struct hdmi_eld sink_eld; int mux_idx; int pin_nid; int dev_id; int cvt_nid; } ;
struct hdmi_spec_per_cvt {int assigned; int maxbps; int formats; int rates; int channels_max; int channels_min; int cvt_nid; } ;
struct hdmi_spec {int pcm_lock; int pcm_in_use; int dyn_pcm_assign; } ;
struct hda_pcm_stream {int rates; int formats; int channels_max; int channels_min; int nid; int maxbps; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int EINVAL ;
 int ENODEV ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_choose_cvt (struct hda_codec*,int,int*) ;
 int hdmi_pcm_open_no_pin (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ;
 int hinfo_to_pcm_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int hinfo_to_pin_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_cvt_fixup (struct hda_codec*,struct hdmi_spec_per_pin*,int ) ;
 int set_bit (int,int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_set_dev_select (struct hda_codec*,int ,int ) ;
 int snd_hda_spdif_ctls_assign (struct hda_codec*,int,int ) ;
 int snd_hda_spdif_ctls_unassign (struct hda_codec*,int) ;
 int snd_hdmi_eld_update_pcm_info (int *,struct hda_pcm_stream*) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int static_hdmi_pcm ;

__attribute__((used)) static int hdmi_pcm_open(struct hda_pcm_stream *hinfo,
    struct hda_codec *codec,
    struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int pin_idx, cvt_idx, pcm_idx;
 struct hdmi_spec_per_pin *per_pin;
 struct hdmi_eld *eld;
 struct hdmi_spec_per_cvt *per_cvt = ((void*)0);
 int err;


 pcm_idx = hinfo_to_pcm_index(codec, hinfo);
 if (pcm_idx < 0)
  return -EINVAL;

 mutex_lock(&spec->pcm_lock);
 pin_idx = hinfo_to_pin_index(codec, hinfo);
 if (!spec->dyn_pcm_assign) {
  if (snd_BUG_ON(pin_idx < 0)) {
   err = -EINVAL;
   goto unlock;
  }
 } else {



  if (pin_idx < 0) {
   err = hdmi_pcm_open_no_pin(hinfo, codec, substream);
   goto unlock;
  }
 }

 err = hdmi_choose_cvt(codec, pin_idx, &cvt_idx);
 if (err < 0)
  goto unlock;

 per_cvt = get_cvt(spec, cvt_idx);

 per_cvt->assigned = 1;

 set_bit(pcm_idx, &spec->pcm_in_use);
 per_pin = get_pin(spec, pin_idx);
 per_pin->cvt_nid = per_cvt->cvt_nid;
 hinfo->nid = per_cvt->cvt_nid;

 snd_hda_set_dev_select(codec, per_pin->pin_nid, per_pin->dev_id);
 snd_hda_codec_write_cache(codec, per_pin->pin_nid, 0,
       AC_VERB_SET_CONNECT_SEL,
       per_pin->mux_idx);


 pin_cvt_fixup(codec, per_pin, 0);

 snd_hda_spdif_ctls_assign(codec, pcm_idx, per_cvt->cvt_nid);


 hinfo->channels_min = per_cvt->channels_min;
 hinfo->channels_max = per_cvt->channels_max;
 hinfo->rates = per_cvt->rates;
 hinfo->formats = per_cvt->formats;
 hinfo->maxbps = per_cvt->maxbps;

 eld = &per_pin->sink_eld;

 if (!static_hdmi_pcm && eld->eld_valid) {
  snd_hdmi_eld_update_pcm_info(&eld->info, hinfo);
  if (hinfo->channels_min > hinfo->channels_max ||
      !hinfo->rates || !hinfo->formats) {
   per_cvt->assigned = 0;
   hinfo->nid = 0;
   snd_hda_spdif_ctls_unassign(codec, pcm_idx);
   err = -ENODEV;
   goto unlock;
  }
 }


 runtime->hw.channels_min = hinfo->channels_min;
 runtime->hw.channels_max = hinfo->channels_max;
 runtime->hw.formats = hinfo->formats;
 runtime->hw.rates = hinfo->rates;

 snd_pcm_hw_constraint_step(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 unlock:
 mutex_unlock(&spec->pcm_lock);
 return err;
}
