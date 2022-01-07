
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; } ;
struct hdmi_spec_per_pin {int setup; int lock; int channels; int dev_id; int pin_nid; } ;
struct TYPE_4__ {int (* setup_stream ) (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;} ;
struct hdmi_spec {int pcm_lock; TYPE_2__ ops; scalar_t__ dyn_pin_out; scalar_t__ dyn_pcm_assign; } ;
struct hda_pcm_stream {int nid; } ;
struct hda_codec {TYPE_1__* bus; int core; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_3__ {int core; } ;


 int AC_VERB_GET_PIN_WIDGET_CONTROL ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int AC_VERB_SET_STRIPE_CONTROL ;
 int AC_WCAP_STRIPE ;
 int EINVAL ;
 int PIN_OUT ;
 int check_non_pcm_per_cvt (struct hda_codec*,int ) ;
 scalar_t__ codec_has_acomp (struct hda_codec*) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int get_wcaps (struct hda_codec*,int ) ;
 int hdmi_setup_audio_infoframe (struct hda_codec*,struct hdmi_spec_per_pin*,int) ;
 int hinfo_to_pin_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_cvt_fixup (struct hda_codec*,struct hdmi_spec_per_pin*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hdac_get_stream_stripe_ctl (int *,struct snd_pcm_substream*) ;
 int snd_hdac_sync_audio_rate (int *,int ,int ,int ) ;
 int stub1 (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int generic_hdmi_playback_pcm_prepare(struct hda_pcm_stream *hinfo,
        struct hda_codec *codec,
        unsigned int stream_tag,
        unsigned int format,
        struct snd_pcm_substream *substream)
{
 hda_nid_t cvt_nid = hinfo->nid;
 struct hdmi_spec *spec = codec->spec;
 int pin_idx;
 struct hdmi_spec_per_pin *per_pin;
 hda_nid_t pin_nid;
 struct snd_pcm_runtime *runtime = substream->runtime;
 bool non_pcm;
 int pinctl, stripe;
 int err = 0;

 mutex_lock(&spec->pcm_lock);
 pin_idx = hinfo_to_pin_index(codec, hinfo);
 if (spec->dyn_pcm_assign && pin_idx < 0) {




  pin_cvt_fixup(codec, ((void*)0), cvt_nid);
  snd_hda_codec_setup_stream(codec, cvt_nid,
     stream_tag, 0, format);
  goto unlock;
 }

 if (snd_BUG_ON(pin_idx < 0)) {
  err = -EINVAL;
  goto unlock;
 }
 per_pin = get_pin(spec, pin_idx);
 pin_nid = per_pin->pin_nid;
 pin_cvt_fixup(codec, per_pin, 0);



 if (codec_has_acomp(codec))
  snd_hdac_sync_audio_rate(&codec->core, pin_nid, per_pin->dev_id,
      runtime->rate);

 non_pcm = check_non_pcm_per_cvt(codec, cvt_nid);
 mutex_lock(&per_pin->lock);
 per_pin->channels = substream->runtime->channels;
 per_pin->setup = 1;

 if (get_wcaps(codec, cvt_nid) & AC_WCAP_STRIPE) {
  stripe = snd_hdac_get_stream_stripe_ctl(&codec->bus->core,
       substream);
  snd_hda_codec_write(codec, cvt_nid, 0,
        AC_VERB_SET_STRIPE_CONTROL,
        stripe);
 }

 hdmi_setup_audio_infoframe(codec, per_pin, non_pcm);
 mutex_unlock(&per_pin->lock);
 if (spec->dyn_pin_out) {
  pinctl = snd_hda_codec_read(codec, pin_nid, 0,
         AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
  snd_hda_codec_write(codec, pin_nid, 0,
        AC_VERB_SET_PIN_WIDGET_CONTROL,
        pinctl | PIN_OUT);
 }


 err = spec->ops.setup_stream(codec, cvt_nid, pin_nid,
     stream_tag, format);
 unlock:
 mutex_unlock(&spec->pcm_lock);
 return err;
}
