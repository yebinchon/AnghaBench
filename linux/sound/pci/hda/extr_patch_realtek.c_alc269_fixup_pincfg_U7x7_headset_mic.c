
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 unsigned int AC_DEFCFG_DEVICE ;
 unsigned int AC_DEFCFG_DEVICE_SHIFT ;
 unsigned int AC_JACK_MIC_IN ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void alc269_fixup_pincfg_U7x7_headset_mic(struct hda_codec *codec,
       const struct hda_fixup *fix,
       int action)
{
 unsigned int cfg_headphone = snd_hda_codec_get_pincfg(codec, 0x21);
 unsigned int cfg_headset_mic = snd_hda_codec_get_pincfg(codec, 0x19);

 if (cfg_headphone && cfg_headset_mic == 0x411111f0)
  snd_hda_codec_set_pincfg(codec, 0x19,
   (cfg_headphone & ~AC_DEFCFG_DEVICE) |
   (AC_JACK_MIC_IN << AC_DEFCFG_DEVICE_SHIFT));
}
