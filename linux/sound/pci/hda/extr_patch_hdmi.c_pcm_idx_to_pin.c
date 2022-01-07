
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pcm_idx; } ;
struct hdmi_spec {int num_pins; } ;


 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;

__attribute__((used)) static struct hdmi_spec_per_pin *pcm_idx_to_pin(struct hdmi_spec *spec,
      int pcm_idx)
{
 int i;
 struct hdmi_spec_per_pin *per_pin;

 for (i = 0; i < spec->num_pins; i++) {
  per_pin = get_pin(spec, i);
  if (per_pin->pcm_idx == pcm_idx)
   return per_pin;
 }
 return ((void*)0);
}
