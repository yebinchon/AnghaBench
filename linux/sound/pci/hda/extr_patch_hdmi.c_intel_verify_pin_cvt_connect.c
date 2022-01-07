
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int mux_idx; int pin_nid; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CONNECT_SEL ;
 int AC_VERB_SET_CONNECT_SEL ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void intel_verify_pin_cvt_connect(struct hda_codec *codec,
   struct hdmi_spec_per_pin *per_pin)
{
 hda_nid_t pin_nid = per_pin->pin_nid;
 int mux_idx, curr;

 mux_idx = per_pin->mux_idx;
 curr = snd_hda_codec_read(codec, pin_nid, 0,
       AC_VERB_GET_CONNECT_SEL, 0);
 if (curr != mux_idx)
  snd_hda_codec_write_cache(codec, pin_nid, 0,
         AC_VERB_SET_CONNECT_SEL,
         mux_idx);
}
