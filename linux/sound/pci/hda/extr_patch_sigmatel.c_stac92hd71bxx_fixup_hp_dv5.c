
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 unsigned int AC_GPIO_IO_COUNT ;
 int AC_PAR_GPIO_CAP ;


 int snd_hda_codec_set_pincfg (struct hda_codec*,int,int) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int,int ) ;
 int stac_add_hp_bass_switch (struct hda_codec*) ;

__attribute__((used)) static void stac92hd71bxx_fixup_hp_dv5(struct hda_codec *codec,
           const struct hda_fixup *fix, int action)
{
 unsigned int cap;

 switch (action) {
 case 129:
  snd_hda_codec_set_pincfg(codec, 0x0d, 0x90170010);
  break;

 case 128:

  cap = snd_hda_param_read(codec, 0x1, AC_PAR_GPIO_CAP);
  cap &= AC_GPIO_IO_COUNT;
  if (cap >= 6)
   stac_add_hp_bass_switch(codec);
  break;
 }
}
