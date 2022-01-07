
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin_cvt_fixup; } ;
struct hdmi_spec {TYPE_1__ ops; } ;
struct hda_codec {int display_power_control; int auto_runtime_pm; scalar_t__ depop_delay; struct hdmi_spec* spec; } ;


 int alloc_intel_hdmi (struct hda_codec*) ;
 int i915_pin_cvt_fixup ;
 int parse_intel_hdmi (struct hda_codec*) ;

__attribute__((used)) static int patch_i915_byt_hdmi(struct hda_codec *codec)
{
 struct hdmi_spec *spec;
 int err;

 err = alloc_intel_hdmi(codec);
 if (err < 0)
  return err;
 spec = codec->spec;




 codec->display_power_control = 1;

 codec->depop_delay = 0;
 codec->auto_runtime_pm = 1;

 spec->ops.pin_cvt_fixup = i915_pin_cvt_fixup;

 return parse_intel_hdmi(codec);
}
