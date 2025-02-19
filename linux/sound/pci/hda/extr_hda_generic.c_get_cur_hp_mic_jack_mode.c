
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCTL_VREFEN ;
 unsigned int PIN_HP ;
 unsigned int PIN_IN ;
 unsigned int PIN_OUT ;
 scalar_t__ cvt_from_vref_idx (unsigned int,unsigned int) ;
 int get_in_jack_num_items (struct hda_codec*,int ) ;
 int get_out_jack_num_items (struct hda_codec*,int ) ;
 unsigned int get_vref_caps (struct hda_codec*,int ) ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;

__attribute__((used)) static int get_cur_hp_mic_jack_mode(struct hda_codec *codec, hda_nid_t nid)
{
 int out_jacks = get_out_jack_num_items(codec, nid);
 int in_jacks = get_in_jack_num_items(codec, nid);
 unsigned int val = snd_hda_codec_get_pin_target(codec, nid);
 int idx = 0;

 if (val & PIN_OUT) {
  if (out_jacks > 1 && val == PIN_HP)
   idx = 1;
 } else if (val & PIN_IN) {
  idx = out_jacks;
  if (in_jacks > 1) {
   unsigned int vref_caps = get_vref_caps(codec, nid);
   val &= AC_PINCTL_VREFEN;
   idx += cvt_from_vref_idx(vref_caps, val);
  }
 }
 return idx;
}
