
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int vendor_nid; } ;
struct hda_codec {int core; struct hdmi_spec* spec; } ;


 unsigned int INTEL_EN_DP12 ;
 int INTEL_GET_VENDOR_VERB ;
 int INTEL_SET_VENDOR_VERB ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hdac_regmap_add_vendor_verb (int *,int ) ;

__attribute__((used)) static void intel_haswell_fixup_enable_dp12(struct hda_codec *codec)
{
 unsigned int vendor_param;
 struct hdmi_spec *spec = codec->spec;

 vendor_param = snd_hda_codec_read(codec, spec->vendor_nid, 0,
    INTEL_GET_VENDOR_VERB, 0);
 if (vendor_param == -1 || vendor_param & INTEL_EN_DP12)
  return;


 vendor_param |= INTEL_EN_DP12;
 snd_hdac_regmap_add_vendor_verb(&codec->core, INTEL_SET_VENDOR_VERB);
 snd_hda_codec_write_cache(codec, spec->vendor_nid, 0,
    INTEL_SET_VENDOR_VERB, vendor_param);
}
