
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_WCAP_OUT_AMP ;
 int AMP_OUT_UNMUTE ;
 int AMP_OUT_ZERO ;
 int PIN_HP ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 int snd_hda_codec_write (struct hda_codec*,scalar_t__,int ,int ,int ) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,scalar_t__,int ) ;

__attribute__((used)) static void init_output(struct hda_codec *codec, hda_nid_t pin, hda_nid_t dac)
{
 if (pin) {
  snd_hda_set_pin_ctl(codec, pin, PIN_HP);
  if (get_wcaps(codec, pin) & AC_WCAP_OUT_AMP)
   snd_hda_codec_write(codec, pin, 0,
         AC_VERB_SET_AMP_GAIN_MUTE,
         AMP_OUT_UNMUTE);
 }
 if (dac && (get_wcaps(codec, dac) & AC_WCAP_OUT_AMP))
  snd_hda_codec_write(codec, dac, 0,
        AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_ZERO);
}
