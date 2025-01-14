
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pin_nid; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int ATI_MULTICHANNEL_MODE_SINGLE ;
 int ATI_VERB_SET_DOWNMIX_INFO ;
 int ATI_VERB_SET_MULTICHANNEL_MODE ;
 int generic_hdmi_init (struct hda_codec*) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 scalar_t__ has_amd_full_remap_support (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int atihdmi_init(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int pin_idx, err;

 err = generic_hdmi_init(codec);

 if (err)
  return err;

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);


  snd_hda_codec_write(codec, per_pin->pin_nid, 0, ATI_VERB_SET_DOWNMIX_INFO, 0);


  if (has_amd_full_remap_support(codec))
   snd_hda_codec_write(codec, per_pin->pin_nid, 0,
         ATI_VERB_SET_MULTICHANNEL_MODE,
         ATI_MULTICHANNEL_MODE_SINGLE);
 }

 return 0;
}
