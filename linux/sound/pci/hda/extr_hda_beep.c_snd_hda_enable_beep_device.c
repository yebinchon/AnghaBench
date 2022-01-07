
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {int enabled; } ;


 int turn_off_beep (struct hda_beep*) ;

int snd_hda_enable_beep_device(struct hda_codec *codec, int enable)
{
 struct hda_beep *beep = codec->beep;
 if (!beep)
  return 0;
 enable = !!enable;
 if (beep->enabled != enable) {
  beep->enabled = enable;
  if (!enable)
   turn_off_beep(beep);
  return 1;
 }
 return 0;
}
