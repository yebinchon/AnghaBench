
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int num_mux_nids; scalar_t__* mux_nids; int mux_idx; } ;
struct hdmi_spec_per_cvt {scalar_t__ cvt_nid; scalar_t__ assigned; } ;
struct hdmi_spec {int num_cvts; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int EBUSY ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;

__attribute__((used)) static int hdmi_choose_cvt(struct hda_codec *codec,
      int pin_idx, int *cvt_id)
{
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin;
 struct hdmi_spec_per_cvt *per_cvt = ((void*)0);
 int cvt_idx, mux_idx = 0;


 if (pin_idx < 0)
  per_pin = ((void*)0);
 else
  per_pin = get_pin(spec, pin_idx);


 for (cvt_idx = 0; cvt_idx < spec->num_cvts; cvt_idx++) {
  per_cvt = get_cvt(spec, cvt_idx);


  if (per_cvt->assigned)
   continue;
  if (per_pin == ((void*)0))
   break;

  for (mux_idx = 0; mux_idx < per_pin->num_mux_nids; mux_idx++)
   if (per_pin->mux_nids[mux_idx] == per_cvt->cvt_nid)
    break;

  if (mux_idx == per_pin->num_mux_nids)
   continue;
  break;
 }


 if (cvt_idx == spec->num_cvts)
  return -EBUSY;

 if (per_pin != ((void*)0))
  per_pin->mux_idx = mux_idx;

 if (cvt_id)
  *cvt_id = cvt_idx;

 return 0;
}
