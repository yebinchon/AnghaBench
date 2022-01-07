
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct hda_beep {int playing; int (* power_hook ) (struct hda_beep*,int) ;int nid; struct hda_codec* codec; } ;


 int AC_VERB_SET_BEEP_CONTROL ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 int stub1 (struct hda_beep*,int) ;
 int stub2 (struct hda_beep*,int) ;

__attribute__((used)) static void generate_tone(struct hda_beep *beep, int tone)
{
 struct hda_codec *codec = beep->codec;

 if (tone && !beep->playing) {
  snd_hda_power_up(codec);
  if (beep->power_hook)
   beep->power_hook(beep, 1);
  beep->playing = 1;
 }
 snd_hda_codec_write(codec, beep->nid, 0,
       AC_VERB_SET_BEEP_CONTROL, tone);
 if (!tone && beep->playing) {
  beep->playing = 0;
  if (beep->power_hook)
   beep->power_hook(beep, 0);
  snd_hda_power_down(codec);
 }
}
