
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int num_mux_nids; scalar_t__* mux_nids; } ;
struct hdmi_spec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;



__attribute__((used)) static int hdmi_get_pin_cvt_mux(struct hdmi_spec *spec,
  struct hdmi_spec_per_pin *per_pin, hda_nid_t cvt_nid)
{
 int mux_idx;

 for (mux_idx = 0; mux_idx < per_pin->num_mux_nids; mux_idx++)
  if (per_pin->mux_nids[mux_idx] == cvt_nid)
   break;
 return mux_idx;
}
