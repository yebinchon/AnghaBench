
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pcm_idx; int pcm; } ;
struct hdmi_spec {int pcm_bitmap; } ;


 int EBUSY ;
 int get_hdmi_pcm (struct hdmi_spec*,int) ;
 int hdmi_find_pcm_slot (struct hdmi_spec*,struct hdmi_spec_per_pin*) ;
 int set_bit (int,int *) ;

__attribute__((used)) static void hdmi_attach_hda_pcm(struct hdmi_spec *spec,
    struct hdmi_spec_per_pin *per_pin)
{
 int idx;


 if (per_pin->pcm)
  return;
 idx = hdmi_find_pcm_slot(spec, per_pin);
 if (idx == -EBUSY)
  return;
 per_pin->pcm_idx = idx;
 per_pin->pcm = get_hdmi_pcm(spec, idx);
 set_bit(idx, &spec->pcm_bitmap);
}
