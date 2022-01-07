
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int pcm_lock; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int get_pin (struct hdmi_spec*,int) ;
 scalar_t__ hdmi_present_sense (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_id_to_pin_index (struct hda_codec*,int ,int) ;
 int snd_hda_jack_report_sync (struct hda_codec*) ;

__attribute__((used)) static void check_presence_and_report(struct hda_codec *codec, hda_nid_t nid,
          int dev_id)
{
 struct hdmi_spec *spec = codec->spec;
 int pin_idx = pin_id_to_pin_index(codec, nid, dev_id);

 if (pin_idx < 0)
  return;
 mutex_lock(&spec->pcm_lock);
 if (hdmi_present_sense(get_pin(spec, pin_idx), 1))
  snd_hda_jack_report_sync(codec);
 mutex_unlock(&spec->pcm_lock);
}
