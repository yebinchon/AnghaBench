
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {scalar_t__ playing; int beep_work; } ;


 int cancel_work_sync (int *) ;
 int generate_tone (struct hda_beep*,int ) ;

__attribute__((used)) static void turn_off_beep(struct hda_beep *beep)
{
 cancel_work_sync(&beep->beep_work);
 if (beep->playing) {

  generate_tone(beep, 0);
 }
}
