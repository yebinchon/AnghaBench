
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;




 int alc662_aspire_ethos_mute_speakers (struct hda_codec*,int *) ;
 int is_jack_detectable (struct hda_codec*,int) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int,int (*) (struct hda_codec*,int *)) ;

__attribute__((used)) static void alc662_fixup_aspire_ethos_hp(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{

 if (!is_jack_detectable(codec, 0x1b))
  return;

 switch (action) {
 case 128:
  snd_hda_jack_detect_enable_callback(codec, 0x1b,
    alc662_aspire_ethos_mute_speakers);
  break;
 case 129:



  alc662_aspire_ethos_mute_speakers(codec, ((void*)0));
  break;
 }
}
