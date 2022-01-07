
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pin_nid_idx; } ;
struct hdmi_spec {int num_nids; int pcm_used; int pcm_bitmap; } ;


 int EBUSY ;
 int test_bit (int,int *) ;

__attribute__((used)) static int hdmi_find_pcm_slot(struct hdmi_spec *spec,
    struct hdmi_spec_per_pin *per_pin)
{
 int i;


 if (!test_bit(per_pin->pin_nid_idx, &spec->pcm_bitmap))
  return per_pin->pin_nid_idx;


 for (i = spec->num_nids; i < spec->pcm_used; i++) {
  if (!test_bit(i, &spec->pcm_bitmap))
   return i;
 }


 for (i = 0; i < spec->num_nids; i++) {
  if (!test_bit(i, &spec->pcm_bitmap))
   return i;
 }
 return -EBUSY;
}
