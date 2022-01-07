
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int intel_cvt_id_to_mux_idx (struct hdmi_spec*,int ) ;
 int intel_not_share_assigned_cvt (struct hda_codec*,int ,int,int) ;

__attribute__((used)) static void intel_not_share_assigned_cvt_nid(struct hda_codec *codec,
   hda_nid_t pin_nid, int dev_id, hda_nid_t cvt_nid)
{
 int mux_idx;
 struct hdmi_spec *spec = codec->spec;






 mux_idx = intel_cvt_id_to_mux_idx(spec, cvt_nid);
 if (mux_idx >= 0)
  intel_not_share_assigned_cvt(codec, pin_nid, dev_id, mux_idx);
}
