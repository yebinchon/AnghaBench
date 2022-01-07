
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pcm_idx; int * pcm; } ;
struct hdmi_spec {int pcm_used; int pcm_bitmap; } ;


 int clear_bit (int,int *) ;

__attribute__((used)) static void hdmi_detach_hda_pcm(struct hdmi_spec *spec,
    struct hdmi_spec_per_pin *per_pin)
{
 int idx;


 if (!per_pin->pcm)
  return;
 idx = per_pin->pcm_idx;
 per_pin->pcm_idx = -1;
 per_pin->pcm = ((void*)0);
 if (idx >= 0 && idx < spec->pcm_used)
  clear_bit(idx, &spec->pcm_bitmap);
}
