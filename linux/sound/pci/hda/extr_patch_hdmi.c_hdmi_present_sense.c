
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {struct hda_codec* codec; } ;
struct hda_codec {int dummy; } ;


 int codec_has_acomp (struct hda_codec*) ;
 int hda_codec_dev (struct hda_codec*) ;
 int hdmi_present_sense_via_verbs (struct hdmi_spec_per_pin*,int) ;
 scalar_t__ pm_runtime_suspended (int ) ;
 int snd_hda_power_down_pm (struct hda_codec*) ;
 int snd_hda_power_up_pm (struct hda_codec*) ;
 int sync_eld_via_acomp (struct hda_codec*,struct hdmi_spec_per_pin*) ;

__attribute__((used)) static bool hdmi_present_sense(struct hdmi_spec_per_pin *per_pin, int repoll)
{
 struct hda_codec *codec = per_pin->codec;
 int ret;


 if (!codec_has_acomp(codec)) {
  ret = snd_hda_power_up_pm(codec);
  if (ret < 0 && pm_runtime_suspended(hda_codec_dev(codec))) {
   snd_hda_power_down_pm(codec);
   return 0;
  }
  ret = hdmi_present_sense_via_verbs(per_pin, repoll);
  snd_hda_power_down_pm(codec);
 } else {
  sync_eld_via_acomp(codec, per_pin);
  ret = 0;
 }

 return ret;
}
