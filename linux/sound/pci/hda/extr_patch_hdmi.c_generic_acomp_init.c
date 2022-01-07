
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int (* port2pin ) (struct hda_codec*,int) ;int acomp_registered; int drm_audio_ops; } ;
struct hda_codec {TYPE_1__* bus; struct hdmi_spec* spec; } ;
struct drm_audio_component_audio_ops {int dummy; } ;
struct TYPE_2__ {scalar_t__ keep_power; int core; } ;


 int match_bound_vga ;
 int setup_drm_audio_ops (struct hda_codec*,struct drm_audio_component_audio_ops const*) ;
 int snd_hdac_acomp_init (int *,int *,int ,int ) ;

__attribute__((used)) static void generic_acomp_init(struct hda_codec *codec,
          const struct drm_audio_component_audio_ops *ops,
          int (*port2pin)(struct hda_codec *, int))
{
 struct hdmi_spec *spec = codec->spec;

 spec->port2pin = port2pin;
 setup_drm_audio_ops(codec, ops);
 if (!snd_hdac_acomp_init(&codec->bus->core, &spec->drm_audio_ops,
     match_bound_vga, 0)) {
  spec->acomp_registered = 1;
  codec->bus->keep_power = 0;
 }
}
