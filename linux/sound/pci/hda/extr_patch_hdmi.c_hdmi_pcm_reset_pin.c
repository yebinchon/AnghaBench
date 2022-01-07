
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {scalar_t__ pcm_idx; int chmap_set; int setup; scalar_t__ channels; int chmap; int codec; } ;
struct hdmi_spec {scalar_t__ pcm_used; } ;


 int memset (int ,int ,int) ;
 int snd_hda_spdif_ctls_unassign (int ,scalar_t__) ;

__attribute__((used)) static void hdmi_pcm_reset_pin(struct hdmi_spec *spec,
      struct hdmi_spec_per_pin *per_pin)
{
 if (per_pin->pcm_idx >= 0 && per_pin->pcm_idx < spec->pcm_used)
  snd_hda_spdif_ctls_unassign(per_pin->codec, per_pin->pcm_idx);

 per_pin->chmap_set = 0;
 memset(per_pin->chmap, 0, sizeof(per_pin->chmap));

 per_pin->setup = 0;
 per_pin->channels = 0;
}
