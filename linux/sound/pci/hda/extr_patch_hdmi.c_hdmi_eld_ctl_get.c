
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdmi_eld {scalar_t__ eld_size; int eld_buffer; scalar_t__ eld_valid; } ;
struct hdmi_spec_per_pin {struct hdmi_eld sink_eld; } ;
struct hdmi_spec {int pcm_lock; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ ELD_MAX_SIZE ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hdmi_spec_per_pin* pcm_idx_to_pin (struct hdmi_spec*,int) ;
 int snd_BUG () ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_eld_ctl_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin;
 struct hdmi_eld *eld;
 int pcm_idx;
 int err = 0;

 pcm_idx = kcontrol->private_value;
 mutex_lock(&spec->pcm_lock);
 per_pin = pcm_idx_to_pin(spec, pcm_idx);
 if (!per_pin) {

  memset(ucontrol->value.bytes.data, 0,
         ARRAY_SIZE(ucontrol->value.bytes.data));
  goto unlock;
 }

 eld = &per_pin->sink_eld;
 if (eld->eld_size > ARRAY_SIZE(ucontrol->value.bytes.data) ||
     eld->eld_size > ELD_MAX_SIZE) {
  snd_BUG();
  err = -EINVAL;
  goto unlock;
 }

 memset(ucontrol->value.bytes.data, 0,
        ARRAY_SIZE(ucontrol->value.bytes.data));
 if (eld->eld_valid)
  memcpy(ucontrol->value.bytes.data, eld->eld_buffer,
         eld->eld_size);

 unlock:
 mutex_unlock(&spec->pcm_lock);
 return err;
}
