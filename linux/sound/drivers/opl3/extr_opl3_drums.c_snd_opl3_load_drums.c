
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int dummy; } ;


 int bass_note ;
 int bass_op0 ;
 int bass_op1 ;
 int cymbal ;
 int hihat ;
 int snare ;
 int snare_note ;
 int snd_opl3_drum_note_set (struct snd_opl3*,int *) ;
 int snd_opl3_drum_voice_set (struct snd_opl3*,int *) ;
 int tomtom ;
 int tomtom_note ;

void snd_opl3_load_drums(struct snd_opl3 *opl3)
{
 snd_opl3_drum_voice_set(opl3, &bass_op0);
 snd_opl3_drum_voice_set(opl3, &bass_op1);
 snd_opl3_drum_note_set(opl3, &bass_note);

 snd_opl3_drum_voice_set(opl3, &hihat);

 snd_opl3_drum_voice_set(opl3, &snare);
 snd_opl3_drum_note_set(opl3, &snare_note);

 snd_opl3_drum_voice_set(opl3, &tomtom);
 snd_opl3_drum_note_set(opl3, &tomtom_note);

 snd_opl3_drum_voice_set(opl3, &cymbal);
}
