
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int (* port2pin ) (struct hda_codec*,int) ;} ;
struct hda_codec {int core; int card; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_WID_PIN ;
 scalar_t__ SNDRV_CTL_POWER_D0 ;
 int check_presence_and_report (struct hda_codec*,int ,int) ;
 int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (int ) ;
 scalar_t__ snd_hdac_is_in_pm (int *) ;
 scalar_t__ snd_power_get_state (int ) ;
 int stub1 (struct hda_codec*,int) ;

__attribute__((used)) static void generic_acomp_pin_eld_notify(void *audio_ptr, int port, int dev_id)
{
 struct hda_codec *codec = audio_ptr;
 struct hdmi_spec *spec = codec->spec;
 hda_nid_t pin_nid = spec->port2pin(codec, port);

 if (!pin_nid)
  return;
 if (get_wcaps_type(get_wcaps(codec, pin_nid)) != AC_WID_PIN)
  return;



 if (snd_power_get_state(codec->card) != SNDRV_CTL_POWER_D0)
  return;

 if (snd_hdac_is_in_pm(&codec->core))
  return;

 check_presence_and_report(codec, pin_nid, dev_id);
}
