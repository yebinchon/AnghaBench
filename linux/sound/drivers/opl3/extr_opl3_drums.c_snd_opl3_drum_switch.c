
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3_drum_voice {int dummy; } ;
struct snd_opl3 {int drum_reg; int (* command ) (struct snd_opl3*,int,unsigned char) ;} ;
struct snd_midi_channel {int dummy; } ;





 int OPL3_LEFT ;
 int OPL3_PERCUSSION_ENABLE ;
 int OPL3_REG_PERCUSSION ;


 struct snd_opl3_drum_voice bass_op1 ;
 struct snd_opl3_drum_voice cymbal ;
 struct snd_opl3_drum_voice hihat ;
 struct snd_opl3_drum_voice snare ;
 unsigned char* snd_opl3_drum_table ;
 int snd_opl3_drum_vol_set (struct snd_opl3*,struct snd_opl3_drum_voice*,int,struct snd_midi_channel*) ;
 int stub1 (struct snd_opl3*,int,unsigned char) ;
 struct snd_opl3_drum_voice tomtom ;

void snd_opl3_drum_switch(struct snd_opl3 *opl3, int note, int vel, int on_off,
     struct snd_midi_channel *chan)
{
 unsigned char drum_mask;
 struct snd_opl3_drum_voice *drum_voice;

 if (!(opl3->drum_reg & OPL3_PERCUSSION_ENABLE))
  return;

 if ((note < 35) || (note > 81))
  return;
 drum_mask = snd_opl3_drum_table[note - 35];

 if (on_off) {
  switch (drum_mask) {
  case 132:
   drum_voice = &bass_op1;
   break;
  case 130:
   drum_voice = &hihat;
   break;
  case 129:
   drum_voice = &snare;
   break;
  case 128:
   drum_voice = &tomtom;
   break;
  case 131:
   drum_voice = &cymbal;
   break;
  default:
   drum_voice = &tomtom;
  }

  snd_opl3_drum_vol_set(opl3, drum_voice, vel, chan);
  opl3->drum_reg |= drum_mask;
 } else {
  opl3->drum_reg &= ~drum_mask;
 }
 opl3->command(opl3, OPL3_LEFT | OPL3_REG_PERCUSSION,
    opl3->drum_reg);
}
