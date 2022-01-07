
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int num_cvts; scalar_t__* cvt_nids; } ;
typedef scalar_t__ hda_nid_t ;


 int EINVAL ;

__attribute__((used)) static int intel_cvt_id_to_mux_idx(struct hdmi_spec *spec,
   hda_nid_t cvt_nid)
{
 int i;

 for (i = 0; i < spec->num_cvts; i++)
  if (spec->cvt_nids[i] == cvt_nid)
   return i;
 return -EINVAL;
}
