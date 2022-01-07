
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int master_unbind; int master_bind; int pin_eld_notify; int pin2port; struct hda_codec* audio_ptr; } ;
struct hdmi_spec {TYPE_1__ drm_audio_ops; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct drm_audio_component_audio_ops {int master_unbind; int master_bind; int pin_eld_notify; int pin2port; } ;


 int wmb () ;

__attribute__((used)) static void setup_drm_audio_ops(struct hda_codec *codec,
    const struct drm_audio_component_audio_ops *ops)
{
 struct hdmi_spec *spec = codec->spec;

 spec->drm_audio_ops.audio_ptr = codec;




 wmb();
 spec->drm_audio_ops.pin2port = ops->pin2port;
 spec->drm_audio_ops.pin_eld_notify = ops->pin_eld_notify;
 spec->drm_audio_ops.master_bind = ops->master_bind;
 spec->drm_audio_ops.master_unbind = ops->master_unbind;
}
