
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {TYPE_1__* bus; int core; int card; } ;
struct TYPE_2__ {int core; } ;


 scalar_t__ SNDRV_CTL_POWER_D0 ;
 int check_presence_and_report (struct hda_codec*,int,int) ;
 int intel_port2pin (struct hda_codec*,int) ;
 int snd_hdac_i915_set_bclk (int *) ;
 scalar_t__ snd_hdac_is_in_pm (int *) ;
 scalar_t__ snd_power_get_state (int ) ;

__attribute__((used)) static void intel_pin_eld_notify(void *audio_ptr, int port, int pipe)
{
 struct hda_codec *codec = audio_ptr;
 int pin_nid;
 int dev_id = pipe;

 pin_nid = intel_port2pin(codec, port);
 if (!pin_nid)
  return;



 if (snd_power_get_state(codec->card) != SNDRV_CTL_POWER_D0)
  return;

 if (snd_hdac_is_in_pm(&codec->core))
  return;

 snd_hdac_i915_set_bclk(&codec->bus->core);
 check_presence_and_report(codec, pin_nid, dev_id);
}
