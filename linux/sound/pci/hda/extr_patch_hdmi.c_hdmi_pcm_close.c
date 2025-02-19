
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdmi_spec_per_pin {int chmap_set; int setup; int lock; scalar_t__ channels; int chmap; int pin_nid; } ;
struct hdmi_spec_per_cvt {scalar_t__ assigned; } ;
struct hdmi_spec {int pcm_lock; scalar_t__ dyn_pin_out; scalar_t__ dyn_pcm_assign; int pcm_in_use; } ;
struct hda_pcm_stream {scalar_t__ nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int AC_VERB_GET_PIN_WIDGET_CONTROL ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int EINVAL ;
 int PIN_OUT ;
 int clear_bit (int,int *) ;
 int cvt_nid_to_cvt_index (struct hda_codec*,scalar_t__) ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hinfo_to_pcm_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int hinfo_to_pin_index (struct hda_codec*,struct hda_pcm_stream*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_spdif_ctls_unassign (struct hda_codec*,int) ;

__attribute__((used)) static int hdmi_pcm_close(struct hda_pcm_stream *hinfo,
     struct hda_codec *codec,
     struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 int cvt_idx, pin_idx, pcm_idx;
 struct hdmi_spec_per_cvt *per_cvt;
 struct hdmi_spec_per_pin *per_pin;
 int pinctl;
 int err = 0;

 if (hinfo->nid) {
  pcm_idx = hinfo_to_pcm_index(codec, hinfo);
  if (snd_BUG_ON(pcm_idx < 0))
   return -EINVAL;
  cvt_idx = cvt_nid_to_cvt_index(codec, hinfo->nid);
  if (snd_BUG_ON(cvt_idx < 0))
   return -EINVAL;
  per_cvt = get_cvt(spec, cvt_idx);

  snd_BUG_ON(!per_cvt->assigned);
  per_cvt->assigned = 0;
  hinfo->nid = 0;

  mutex_lock(&spec->pcm_lock);
  snd_hda_spdif_ctls_unassign(codec, pcm_idx);
  clear_bit(pcm_idx, &spec->pcm_in_use);
  pin_idx = hinfo_to_pin_index(codec, hinfo);
  if (spec->dyn_pcm_assign && pin_idx < 0)
   goto unlock;

  if (snd_BUG_ON(pin_idx < 0)) {
   err = -EINVAL;
   goto unlock;
  }
  per_pin = get_pin(spec, pin_idx);

  if (spec->dyn_pin_out) {
   pinctl = snd_hda_codec_read(codec, per_pin->pin_nid, 0,
     AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
   snd_hda_codec_write(codec, per_pin->pin_nid, 0,
         AC_VERB_SET_PIN_WIDGET_CONTROL,
         pinctl & ~PIN_OUT);
  }

  mutex_lock(&per_pin->lock);
  per_pin->chmap_set = 0;
  memset(per_pin->chmap, 0, sizeof(per_pin->chmap));

  per_pin->setup = 0;
  per_pin->channels = 0;
  mutex_unlock(&per_pin->lock);
 unlock:
  mutex_unlock(&spec->pcm_lock);
 }

 return err;
}
