
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pin_cvt_fixup; int setup_stream; } ;
struct hdmi_spec {int dyn_pcm_assign; int const* port_map; int port_num; TYPE_2__ ops; int vendor_nid; } ;
struct TYPE_3__ {int set_power_state; } ;
struct hda_codec {int dp_mst; int display_power_control; int auto_runtime_pm; scalar_t__ depop_delay; TYPE_1__ patch_ops; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int alloc_intel_hdmi (struct hda_codec*) ;
 int haswell_set_power_state ;
 int i915_hsw_setup_stream ;
 int i915_pin_cvt_fixup ;
 int intel_haswell_enable_all_pins (struct hda_codec*,int) ;
 int intel_haswell_fixup_enable_dp12 (struct hda_codec*) ;
 int parse_intel_hdmi (struct hda_codec*) ;

__attribute__((used)) static int intel_hsw_common_init(struct hda_codec *codec, hda_nid_t vendor_nid,
     const int *port_map, int port_num)
{
 struct hdmi_spec *spec;
 int err;

 err = alloc_intel_hdmi(codec);
 if (err < 0)
  return err;
 spec = codec->spec;
 codec->dp_mst = 1;
 spec->dyn_pcm_assign = 1;
 spec->vendor_nid = vendor_nid;
 spec->port_map = port_map;
 spec->port_num = port_num;

 intel_haswell_enable_all_pins(codec, 1);
 intel_haswell_fixup_enable_dp12(codec);

 codec->display_power_control = 1;

 codec->patch_ops.set_power_state = haswell_set_power_state;
 codec->depop_delay = 0;
 codec->auto_runtime_pm = 1;

 spec->ops.setup_stream = i915_hsw_setup_stream;
 spec->ops.pin_cvt_fixup = i915_pin_cvt_fixup;

 return parse_intel_hdmi(codec);
}
