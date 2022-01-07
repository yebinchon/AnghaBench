
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int haswell_verify_D0 (struct hda_codec*,int ,int ) ;
 int hdmi_setup_stream (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static int i915_hsw_setup_stream(struct hda_codec *codec, hda_nid_t cvt_nid,
     hda_nid_t pin_nid, u32 stream_tag, int format)
{
 haswell_verify_D0(codec, cvt_nid, pin_nid);
 return hdmi_setup_stream(codec, cvt_nid, pin_nid, stream_tag, format);
}
