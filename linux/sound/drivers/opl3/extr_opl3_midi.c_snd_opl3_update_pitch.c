
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3_voice {unsigned char keyon_reg; scalar_t__ time; int * chan; int note; } ;
struct snd_opl3 {int use_time; int (* command ) (struct snd_opl3*,unsigned short,unsigned char) ;struct snd_opl3_voice* voices; } ;


 int MAX_OPL2_VOICES ;
 int MAX_OPL3_VOICES ;
 unsigned char OPL3_KEYON_BIT ;
 unsigned short OPL3_LEFT ;
 unsigned char OPL3_REG_FNUM_LOW ;
 unsigned char OPL3_REG_KEYON_BLOCK ;
 unsigned short OPL3_RIGHT ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_opl3_calc_pitch (unsigned char*,unsigned char*,int ,int *) ;
 int stub1 (struct snd_opl3*,unsigned short,unsigned char) ;
 int stub2 (struct snd_opl3*,unsigned short,unsigned char) ;

__attribute__((used)) static void snd_opl3_update_pitch(struct snd_opl3 *opl3, int voice)
{
 unsigned short reg_side;
 unsigned char voice_offset;
 unsigned short opl3_reg;

 unsigned char fnum, blocknum;

 struct snd_opl3_voice *vp;

 if (snd_BUG_ON(voice >= MAX_OPL3_VOICES))
  return;

 vp = &opl3->voices[voice];
 if (vp->chan == ((void*)0))
  return;

 if (voice < MAX_OPL2_VOICES) {

  reg_side = OPL3_LEFT;
  voice_offset = voice;
 } else {

  reg_side = OPL3_RIGHT;
  voice_offset = voice - MAX_OPL2_VOICES;
 }

 snd_opl3_calc_pitch(&fnum, &blocknum, vp->note, vp->chan);


 opl3_reg = reg_side | (OPL3_REG_FNUM_LOW + voice_offset);
 opl3->command(opl3, opl3_reg, fnum);

 vp->keyon_reg = blocknum;


 blocknum |= OPL3_KEYON_BIT;


 opl3_reg = reg_side | (OPL3_REG_KEYON_BLOCK + voice_offset);
 opl3->command(opl3, opl3_reg, blocknum);

 vp->time = opl3->use_time++;
}
