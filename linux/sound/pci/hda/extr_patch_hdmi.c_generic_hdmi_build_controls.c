
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int * mux_nids; int pin_nid; } ;
struct hdmi_spec {int pcm_used; int num_pins; int chmap; int * cvt_nids; scalar_t__ dyn_pcm_assign; int pcm_bitmap; } ;
struct hda_pcm {int device; int pcm; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int HDA_PCM_TYPE_HDMI ;
 int SNDRV_PCM_INVALID_DEVICE ;
 int generic_hdmi_build_jack (struct hda_codec*,int) ;
 struct hda_pcm* get_pcm_rec (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_create_eld_ctl (struct hda_codec*,int,int) ;
 int hdmi_present_sense (struct hdmi_spec_per_pin*,int ) ;
 int set_bit (int,int *) ;
 int snd_hda_create_dig_out_ctls (struct hda_codec*,int ,int ,int ) ;
 int snd_hda_spdif_ctls_unassign (struct hda_codec*,int) ;
 int snd_hdac_add_chmap_ctls (int ,int,int *) ;

__attribute__((used)) static int generic_hdmi_build_controls(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int dev, err;
 int pin_idx, pcm_idx;

 for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++) {
  if (!get_pcm_rec(spec, pcm_idx)->pcm) {

   set_bit(pcm_idx, &spec->pcm_bitmap);
   continue;
  }

  err = generic_hdmi_build_jack(codec, pcm_idx);
  if (err < 0)
   return err;




  if (spec->dyn_pcm_assign)
   err = snd_hda_create_dig_out_ctls(codec,
       0, spec->cvt_nids[0],
       HDA_PCM_TYPE_HDMI);
  else {
   struct hdmi_spec_per_pin *per_pin =
    get_pin(spec, pcm_idx);
   err = snd_hda_create_dig_out_ctls(codec,
        per_pin->pin_nid,
        per_pin->mux_nids[0],
        HDA_PCM_TYPE_HDMI);
  }
  if (err < 0)
   return err;
  snd_hda_spdif_ctls_unassign(codec, pcm_idx);

  dev = get_pcm_rec(spec, pcm_idx)->device;
  if (dev != SNDRV_PCM_INVALID_DEVICE) {

   err = hdmi_create_eld_ctl(codec, pcm_idx, dev);
   if (err < 0)
    return err;
  }
 }

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);

  hdmi_present_sense(per_pin, 0);
 }


 for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++) {
  struct hda_pcm *pcm;

  pcm = get_pcm_rec(spec, pcm_idx);
  if (!pcm || !pcm->pcm)
   break;
  err = snd_hdac_add_chmap_ctls(pcm->pcm, pcm_idx, &spec->chmap);
  if (err < 0)
   return err;
 }

 return 0;
}
