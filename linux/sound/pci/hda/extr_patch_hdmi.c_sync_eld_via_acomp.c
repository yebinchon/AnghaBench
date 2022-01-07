
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {int dummy; } ;
struct hdmi_spec_per_pin {int lock; int dev_id; int pin_nid; } ;
struct hdmi_eld {int monitor_present; int eld_valid; int eld_size; int eld_buffer; int info; } ;
struct hdmi_spec {struct hdmi_eld temp_eld; } ;
struct hda_codec {int core; struct hdmi_spec* spec; } ;


 int EINVAL ;
 int ELD_MAX_SIZE ;
 int SND_JACK_AVOUT ;
 int min (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_jack* pin_idx_to_jack (struct hda_codec*,struct hdmi_spec_per_pin*) ;
 int snd_hdac_acomp_get_eld (int *,int ,int ,int*,int ,int ) ;
 scalar_t__ snd_hdmi_parse_eld (struct hda_codec*,int *,int ,int) ;
 int snd_jack_report (struct snd_jack*,int ) ;
 int update_eld (struct hda_codec*,struct hdmi_spec_per_pin*,struct hdmi_eld*) ;

__attribute__((used)) static void sync_eld_via_acomp(struct hda_codec *codec,
          struct hdmi_spec_per_pin *per_pin)
{
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_eld *eld = &spec->temp_eld;
 struct snd_jack *jack = ((void*)0);
 bool changed;
 int size;

 mutex_lock(&per_pin->lock);
 eld->monitor_present = 0;
 size = snd_hdac_acomp_get_eld(&codec->core, per_pin->pin_nid,
          per_pin->dev_id, &eld->monitor_present,
          eld->eld_buffer, ELD_MAX_SIZE);
 if (size > 0) {
  size = min(size, ELD_MAX_SIZE);
  if (snd_hdmi_parse_eld(codec, &eld->info,
           eld->eld_buffer, size) < 0)
   size = -EINVAL;
 }

 if (size > 0) {
  eld->eld_valid = 1;
  eld->eld_size = size;
 } else {
  eld->eld_valid = 0;
  eld->eld_size = 0;
 }




 jack = pin_idx_to_jack(codec, per_pin);
 changed = update_eld(codec, per_pin, eld);
 if (jack == ((void*)0))
  jack = pin_idx_to_jack(codec, per_pin);
 if (changed && jack)
  snd_jack_report(jack,
    (eld->monitor_present && eld->eld_valid) ?
    SND_JACK_AVOUT : 0);
 mutex_unlock(&per_pin->lock);
}
