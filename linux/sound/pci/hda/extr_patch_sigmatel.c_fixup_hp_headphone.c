
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_DEFCFG_DEF_ASSOC ;
 unsigned int AC_DEFCFG_DEVICE ;
 unsigned int AC_DEFCFG_DEVICE_SHIFT ;
 unsigned int AC_DEFCFG_SEQUENCE ;
 unsigned int AC_JACK_HP_OUT ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void fixup_hp_headphone(struct hda_codec *codec, hda_nid_t pin)
{
 unsigned int pin_cfg = snd_hda_codec_get_pincfg(codec, pin);




 pin_cfg = (pin_cfg & (~AC_DEFCFG_DEVICE)) |
  (AC_JACK_HP_OUT << AC_DEFCFG_DEVICE_SHIFT);
 pin_cfg = (pin_cfg & (~(AC_DEFCFG_DEF_ASSOC | AC_DEFCFG_SEQUENCE))) |
  0x1f;
 snd_hda_codec_set_pincfg(codec, pin, pin_cfg);
}
