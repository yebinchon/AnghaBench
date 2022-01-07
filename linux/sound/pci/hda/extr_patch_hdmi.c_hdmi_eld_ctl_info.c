
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;
struct hdmi_eld {int eld_size; scalar_t__ eld_valid; } ;
struct hdmi_spec_per_pin {struct hdmi_eld sink_eld; } ;
struct hdmi_spec {int pcm_lock; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hdmi_spec_per_pin* pcm_idx_to_pin (struct hdmi_spec*,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_eld_ctl_info(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin;
 struct hdmi_eld *eld;
 int pcm_idx;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;

 pcm_idx = kcontrol->private_value;
 mutex_lock(&spec->pcm_lock);
 per_pin = pcm_idx_to_pin(spec, pcm_idx);
 if (!per_pin) {

  uinfo->count = 0;
  goto unlock;
 }
 eld = &per_pin->sink_eld;
 uinfo->count = eld->eld_valid ? eld->eld_size : 0;

 unlock:
 mutex_unlock(&spec->pcm_lock);
 return 0;
}
