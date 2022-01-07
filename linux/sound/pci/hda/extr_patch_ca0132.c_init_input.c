
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_WCAP_IN_AMP ;
 int AMP_IN_UNMUTE (int ) ;
 int HDA_AMP_MUTE ;
 int HDA_AMP_VOLMASK ;
 int HDA_INPUT ;
 int PIN_VREF80 ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,scalar_t__,int ,int ,int ,int) ;
 int snd_hda_codec_write (struct hda_codec*,scalar_t__,int ,int ,int ) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,scalar_t__,int ) ;

__attribute__((used)) static void init_input(struct hda_codec *codec, hda_nid_t pin, hda_nid_t adc)
{
 if (pin) {
  snd_hda_set_pin_ctl(codec, pin, PIN_VREF80);
  if (get_wcaps(codec, pin) & AC_WCAP_IN_AMP)
   snd_hda_codec_write(codec, pin, 0,
         AC_VERB_SET_AMP_GAIN_MUTE,
         AMP_IN_UNMUTE(0));
 }
 if (adc && (get_wcaps(codec, adc) & AC_WCAP_IN_AMP)) {
  snd_hda_codec_write(codec, adc, 0, AC_VERB_SET_AMP_GAIN_MUTE,
        AMP_IN_UNMUTE(0));


  snd_hda_codec_amp_stereo(codec, adc, HDA_INPUT, 0,
      HDA_AMP_VOLMASK, 0x5a);
  snd_hda_codec_amp_stereo(codec, adc, HDA_INPUT, 0,
      HDA_AMP_MUTE, 0);
 }
}
