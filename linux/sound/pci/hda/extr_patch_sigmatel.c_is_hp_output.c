
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_HP_OUT ;
 scalar_t__ AC_JACK_LINE_OUT ;
 scalar_t__ AC_JACK_PORT_NONE ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 scalar_t__ get_defcfg_device (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;

__attribute__((used)) static bool is_hp_output(struct hda_codec *codec, hda_nid_t pin)
{
 unsigned int pin_cfg = snd_hda_codec_get_pincfg(codec, pin);


 return get_defcfg_connect(pin_cfg) != AC_JACK_PORT_NONE &&
  (get_defcfg_device(pin_cfg) == AC_JACK_LINE_OUT ||
   get_defcfg_device(pin_cfg) == AC_JACK_HP_OUT);
}
