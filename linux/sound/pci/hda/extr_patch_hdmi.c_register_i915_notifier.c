
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int use_acomp_notifier; int drm_audio_ops; int port2pin; } ;
struct hda_codec {int relaxed_resume; TYPE_1__* bus; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int core; } ;


 int intel_audio_ops ;
 int intel_port2pin ;
 int setup_drm_audio_ops (struct hda_codec*,int *) ;
 int snd_hdac_acomp_register_notifier (int *,int *) ;

__attribute__((used)) static void register_i915_notifier(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;

 spec->use_acomp_notifier = 1;
 spec->port2pin = intel_port2pin;
 setup_drm_audio_ops(codec, &intel_audio_ops);
 snd_hdac_acomp_register_notifier(&codec->bus->core,
     &spec->drm_audio_ops);

 codec->relaxed_resume = 1;
}
